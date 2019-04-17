var tinhDiem = require('./tinhDiem')
var request = require('request')
var cheerio = require('cheerio')
exports.upd_cpu = function (req, res) {

    db.query("TRUNCATE diemCPU", function (err) {
        if (err) console.log("Không thể truncate CPU data");
    })
    request('https://www.cpubenchmark.net/laptop.html', function (err, respone, body) {
        $ = cheerio.load(body);
        var names = $(body).find('#mark .chart tr td:nth-child(1)');
        var scores = $(body).find('#mark .chart tr td:nth-child(2)');
        names.each(function (i, e) {
            var nameCPU = $(names[i]).text().trim();
            var score = $(scores[i]).text().trim();
            //console.log(score);
            score = score.replace(',', '');
            score = Number(score);
            var query = "INSERT INTO diemCPU(nameCPU,Diem) VALUES ( '" + nameCPU + "'," + score + ")";
            db.query(query, function (err) {
                if (err) console.log("Có lỗi xảy ra khi update điểm CPU " + query);
            })
        })
    })
};
exports.upd_ram = function (req, res) {
    db.query("TRUNCATE DiemRAM");
    var rams = [];
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
                var query = "INSERT INTO DiemRAM(NameRAM, Diem) VALUES ( '" + rams[i] + "'," + score + ")";
                db.query(query, function (err) {
                    if (err) throw err;
                })
            }
            db.query("DELETE n1 FROM DiemRAM n1, DiemRAM n2 WHERE n1.NameRAM = n2.NameRAM AND n1.id_ram > n2.id_ram");
        }
    })
};
exports.upd_mh = function (req, res) {
    db.query('TRUNCATE DiemMH');
    var li_mh = [];
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
                var query = "INSERT INTO DiemMH(Ten_mh , Diem) VALUES('" + li_mh[i] + "'," + score + ")";
                db.query(query, function (err) {
                    if (err) console.log(err);
                })
            }
        }
        db.query("DELETE n1 FROM DiemMH n1, DiemMH n2 WHERE n1.Ten_mh = n2.Ten_mh AND n1.id_mh > n2.id_mh");
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
            if (score > 300){
            var query = "INSERT INTO diemVGA(Ten_VGA,diem_vga) VALUES ( '" + nameVGA + "'," + score + ")";
            db.query(query, function (err) {
                if (err) console.log("Có lỗi xảy ra khi update điểm VGA " + query);
            })
        }
        })
    })
};