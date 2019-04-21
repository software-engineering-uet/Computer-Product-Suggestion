var tinhDiem = require('./tinhDiem')
var request = require('request')
var cheerio = require('cheerio')
exports.upd_cpu = function (req, res) {
    var d_max = 0;
    db.query("INSERT INTO DiemCPU(Name) SELECT CPU FROM laptop_details");
    db.query("DELETE n1 FROM DiemCPU n1, DiemCPU n2 WHERE n1.Name = n2.Name AND n1.id > n2.id");

    var cpus = []
    var getLi_cpu = function (callback) {
        var query = "SELECT nameCPU, Diem FROM DiemCPU_bm";
        db.query(query, function (err, resu) {
            if (resu.length) {
                for (i in resu)
                    cpus.push(resu[i]);
            }
            callback(null, cpus);
        })
    }
    getLi_cpu(function (err, cpus) {
        var cpus1 = [];
        var temp = cpus.map(a => a.nameCPU);
        for (i in temp) {
                temp[i] = temp[i].substring(0, temp[i].indexOf("@"));
                temp[i] = temp[i].toLowerCase().split(" ").join("").split("-").join("");
        }
        var li_cpu1 = function (callback) {
            db.query("SELECT CPU FROM laptop_details", function (err, resu) {
                if (resu.length) {
                    for (i in resu)
                        cpus1.push(resu[i].CPU);
                }
                callback(null, cpus1);
            })
        }
        li_cpu1 (function(err,cpus1){
            var temp1 = cpus1.slice();
            for (i in temp1) {
                temp1[i] = temp1[i].trim().toLowerCase().split(" ").join("").split("-").join("");
                if (temp.indexOf(temp1[i]) != -1 ){      
                    if (cpus[temp.indexOf(temp1[i])].Diem> d_max) d_max = cpus[temp.indexOf(temp1[i])].Diem;                               
                    db.query("UPDATE DiemCPU SET Diem = " + cpus[temp.indexOf(temp1[i])].Diem + " WHERE Name = '" + cpus1[i] + "' ");     
                }
            }
            db.query("SELECT id,Diem FROM DiemCPU", function (err, resu) {
                if (resu.length) {
                    for (i in resu) {
                        var d = resu[i].Diem / d_max;
                        d = d.toPrecision(4) * 100;
                        d = d.toFixed(2);
                        db.query("UPDATE DiemCPU SET Diem100 = " + d + " WHERE id = " + resu[i].id);
                    }
                }
            })
            db.query("UPDATE diemLaptop d SET diemCPU = (SELECT diem100 FROM DiemCPU dr WHERE dr.Name = (SELECT CPU FROM laptop_details dl WHERE dl.id = d.id)) ");
        })
        
    })
  
};
exports.upd_ram = function (req, res) {
    db.query("TRUNCATE DiemRAM");
    var rams = [];
    var d_max = 0;
    var getLiRam = function (callback) {
        var query = "SELECT ram FROM laptop_details";
        db.query(query, function (err, res, fieds) {
            if (err) callback(err);
            else {
                if (res.length) {
                    for (i in res)
                        rams.push(res[i].ram);
                }
            }
            callback(null, rams);
        });
    }
    getLiRam(function (err, rams) {
        if (err) throw err;
        else {
            var bus_max = 0;
            var buss = []
            for (i in rams) {
                var temp = rams[i].split(" ").join("").toLowerCase();
                buss.push(Number(temp.slice(temp.indexOf("mhz") - 4, temp.indexOf("mhz"))));
            }
            bus_max = Math.max(...buss);
            for (i in rams) {
                score = tinhDiem.tinhDiemRam(rams[i], bus_max);
                if (score > d_max) d_max = score;
                var query = "INSERT INTO DiemRAM(NameRAM, Diem) VALUES ( '" + rams[i] + "'," + score + ")";
                db.query(query, function (err) {
                    if (err) throw err;
                })
            }
            db.query("DELETE n1 FROM DiemRAM n1, DiemRAM n2 WHERE n1.NameRAM = n2.NameRAM AND n1.id_ram > n2.id_ram");
            db.query("SELECT id_ram,Diem FROM DiemRAM", function (err, resu) {
                if (resu.length) {
                    for (i in resu) {
                        var d = resu[i].Diem / d_max;
                        d = d.toPrecision(4) * 100;
                        d = d.toFixed(2);
                        db.query("UPDATE DiemRAM SET Diem100 = " + d + " WHERE id_ram = " + resu[i].id_ram);
                    }
                }
            })
        }
    })
};
exports.upd_mh = function (req, res) {
    db.query('TRUNCATE DiemMH');
    var li_mh = [];
    var d_max = 0;
    var getLimh = function (callback) {
        var query = "SELECT Display FROM laptop_details";
        db.query(query, function (err, res, fieds) {
            if (err) callback(err);
            else {
                if (res.length) {
                    for (i in res)
                        li_mh.push(res[i].Display.trim());
                }
            }
            callback(null, li_mh);
        });
    }
    getLimh(function (err, li_mh) {
        if (err) throw err;
        else {
            for (i in li_mh) {
                var score = tinhDiem.tinhDiemMH(li_mh[i]);
                if (d_max < score) d_max = score;
                var query = "INSERT INTO DiemMH(Ten_mh , Diem) VALUES('" + li_mh[i] + "'," + score + ")";
                db.query(query, function (err) {
                    if (err) console.log(err);
                })
            }
        }
        db.query("DELETE n1 FROM DiemMH n1, DiemMH n2 WHERE n1.Ten_mh = n2.Ten_mh AND n1.id_mh > n2.id_mh");
        db.query("SELECT id_mh,Diem FROM DiemMH", function (err, resu) {
            if (resu.length) {
                for (i in resu) {
                    var d = resu[i].Diem / d_max;
                    d = d.toPrecision(4) * 100;
                    d = d.toFixed(2);

                    db.query("UPDATE DiemMH SET Diem100 = " + d + " WHERE id_mh = " + resu[i].id_mh);
                }
            }
        })
    })

};
// exports.upd_hdd = function (req,res){

// };
exports.upd_vga = function (req, res) {
    db.query("TRUNCATE diemVGA", function (err) {
        if (err) console.log("Không thể truncate VGA data");
    })
    request('https://www.videocardbenchmark.net/gpu_list.php', function (err, respone, body) {
        $ = cheerio.load(body);
        var names = $(body).find('#cputable tbody tr td:nth-child(1)');
        var scores = $(body).find('#cputable tbody tr td:nth-child(2)');
        names.each(function (i, e) {
            var nameVGA = $(names[i]).text().trim();
            var score = $(scores[i]).text().trim();
            //console.log(score);
            //score = score.replace(',', '');
            score = Number(score);
            if (score > 300) {
                var query = "INSERT INTO diemVGA(Ten_VGA,diem_vga) VALUES ( '" + nameVGA + "'," + score + ")";
                db.query(query, function (err) {
                    if (err) console.log("Có lỗi xảy ra khi update điểm VGA " + query);
                })
            }
        })
    })
};