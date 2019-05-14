var td = require("../update/tinhDiem");
var download = require('image-downloader');
exports.home = function (req, res) {
    var sess = req.session;
    if (sess.user != undefined && sess.user.username == "admin") {
        res.render("admin/index_ad");
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
}
exports.lc = function (req, res) {
    var message = "";
    var sess = req.session;
    var lc = req.params.lc;
    if (sess.user != undefined && sess.user.username == "admin") {
        if (lc == "quanly") {
            var que = "SELECT id,Name FROM laptop_details";
            db.query(que, function (err, resu, f) {
                res.render("admin/list_ad", { message: message, laps: resu });
            })

        }
        if (lc == "themlaptop") {
            var que = "SELECT Name FROM DiemCPU ORDER BY Name ASC";
            var f = function (callback) {
                db.query(que, function (err, cpu) {
                    callback(null, cpu);
                })
            }
            f(function (err, cpu) {
                db.query("SELECT Name FROM DiemVGA ORDER BY Name ASC", function (err, vga) {
                    res.render("admin/themlaptop", { cpus: cpu, vgas: vga, message: message });
                })
            })
        }
        if (lc == "users") {
            var que = "SELECT *FROM users";
            db.query(que, function (err, resu, f) {
                res.render("admin/users", { message: message, users: resu });
            })
        }
        if (lc == "dexuat") {
            var que = "SELECT * FROM dexuat";
            db.query(que, function (err, resu) {
                res.render("admin/dexuat", { dx: resu });
            })
        }
    }
    else {
        message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
}
exports.xoa = function (req, res) {
    var message = "";
    var sess = req.session;
    var id = req.params.id;
    if (sess.user != undefined && sess.user.username == "admin") {
        //var que = "SELECT id,Name FROM laptop_details";
        var que = "DELETE FROM laptop_details WHERE id= " + id;
        db.query("DELETE FROM diemLaptop WHERE id= " + id);
        db.query(que, function (err, resu, f) {
            res.redirect('/admin/quanly');
        })
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
}

exports.xoa_user = function (req, res) {
    var message = "";
    var sess = req.session;
    var id = req.params.id;
    if (sess.user != undefined && sess.user.username == "admin") {
        //var que = "SELECT id,Name FROM laptop_details";
        var que = "DELETE FROM users WHERE id= " + id;
        db.query(que, function (err, resu, f) {
            res.redirect('/admin/users');
        })
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
}

exports.cpu = function (req, res) {
    var message = "";
    var sess = req.session;
    if (req.method == "POST") {
        var post = req.body;
        var name = post.name;
        var diem = post.diem;
        var que = "INSERT INTO DiemCPU(Name, Diem) VALUES ('" + name + "'," + diem + ")";
        db.query(que);
        db.query("SELECT id,Diem,(SELECT MAX(Diem) FROM DiemCPU) as max FROM DiemCPU", function (err, resu) {
            resu.forEach(function (cpu) {
                var d100 = cpu.Diem / cpu.max;
                d100 = d100.toPrecision(4) * 100;
                d100 = d100.toFixed(2);
                db.query("UPDATE DiemCPU SET Diem100 = " + d100 + "WHERE id = '" + cpu.id + "'");
            })
        })
    }
    if (sess.user != undefined && sess.user.username == "admin") {
        //var que = "SELECT id,Name FROM laptop_details";
        var que = "SELECT * FROM DiemCPU ";
        db.query(que, function (err, resu, f) {
            res.render('admin/list_lk', { list: resu, lk: "cpu" });
        })
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }

}
exports.xoa_cpu = function (req, res) {
    var message = "";
    var sess = req.session;
    var id = req.params.id;
    if (sess.user != undefined && sess.user.username == "admin") {
        //var que = "SELECT id,Name FROM laptop_details";
        var que = "DELETE FROM DiemCPU WHERE id= " + id;
        db.query(que);
        res.redirect('/admin/lk/cpu');
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
}


exports.vga = function (req, res) {
    var message = "";
    var sess = req.session;
    if (req.method == "POST") {
        var post = req.body;
        var name = post.name;
        var diem = post.diem;
        var que = "INSERT INTO DiemVGA(Name, Diem) VALUES ('" + name + "'," + diem + ")";
        db.query(que);
        db.query("SELECT id,Diem,(SELECT MAX(Diem) FROM DiemVGA) as max FROM DiemVGA", function (err, resu) {
            resu.forEach(function (vga) {
                var d100 = vga.Diem / vga.max;
                d100 = d100.toPrecision(4) * 100;
                d100 = d100.toFixed(2);
                db.query("UPDATE DiemVGA SET Diem100 = " + d100 + "WHERE id = '" + vga.id + "'");
            })

        })
    }
    if (sess.user != undefined && sess.user.username == "admin") {
        //var que = "SELECT id,Name FROM laptop_details";
        var que = "SELECT * FROM DiemVGA ";
        db.query(que, function (err, resu, f) {
            res.render('admin/list_lk', { list: resu, lk: "vga" });
        })
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }

}
exports.xoa_vga = function (req, res) {
    var message = "";
    var sess = req.session;
    var id = req.params.id;
    if (sess.user != undefined && sess.user.username == "admin") {
        //var que = "SELECT id,Name FROM laptop_details";
        var que = "DELETE FROM DiemVGA WHERE id= " + id;
        db.query(que);
        res.redirect('/admin/lk/vga');
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
}
exports.themlap = function (req, res) {
    if (req.method == "POST") {
        var message = "";
        var post = req.body;
        var ten = post.ten.trim();
        var link_sp = post.linksp.trim();
        var link_ha = post.linkanh.trim();
        var mh = post.manhinh.trim();
        var gia = post.giaban.trim();
        var ram = post.ram.trim();
        var hdd = post.hdd.trim();
        var vga = post.vga.trim();
        var cpu = post.cpu.trim();
        var d_mh = td.tinhDiemMH(mh);
        var d_ram = td.tinhDiemRam(ram);
        var d_hdd = td.diemhdd(hdd);

        if (ten == "" || link_sp == "" || mh == "" || gia == "" || ram == "" || hdd == "" || vga == "" || cpu == "") {
            var que = "SELECT Name FROM DiemCPU ORDER BY Name ASC";
            var f = function (callback) {
                db.query(que, function (err, cpu) {
                    callback(null, cpu);
                })
            }
            f(function (err, cpu) {
                db.query("SELECT Name FROM DiemVGA ORDER BY Name ASC", function (err, vga) {
                    res.render("admin/themlaptop", { cpus: cpu, vgas: vga, message: "Có lỗi xảy ra !! Chưa nhập đủ thông tin !" });
                })
            })
        }


        if (isNaN(d_hdd) || isNaN(d_ram) || isNaN(d_mh)) {
            var que = "SELECT Name FROM DiemCPU ORDER BY Name ASC";
            var f = function (callback) {
                db.query(que, function (err, cpu) {
                    callback(null, cpu);
                })
            }
            f(function (err, cpu) {
                db.query("SELECT Name FROM DiemVGA ORDER BY Name ASC", function (err, vga) {
                    res.render("admin/themlaptop", { cpus: cpu, vgas: vga, message: "Có lỗi xảy ra !! RAM/HDD không đúng định dạng !" });
                })
            })
        }

        else {
            db.query("INSERT INTO DiemMH(Ten_mh,Diem) VALUES('" + mh + "'," + d_mh + ")");
            db.query("SELECT id_mh,Diem,(SELECT MAX(Diem) FROM DiemMH) as max FROM DiemMH", function (err, resu) {
                resu.forEach(function (_mh) {
                    var d100 = _mh.Diem / _mh.max;
                    d100 = d100.toPrecision(4) * 100;
                    d100 = d100.toFixed(2);
                    db.query("UPDATE DiemMH SET Diem100 = " + d100 + "WHERE id_mh = " + _mh.id_mh + "");
                })
            })
            db.query("DELETE n1 FROM DiemMH n1, DiemMH n2 WHERE n1.Ten_mh = n2.Ten_mh AND n1.id_mh > n2.id_mh");


            db.query("INSERT INTO DiemRAM(NameRAM,Diem) VALUES('" + ram + "'," + d_ram + ")");
            db.query("SELECT id_ram,Diem,(SELECT MAX(Diem) FROM DiemRAM) as max FROM DiemRAM", function (err, resu) {
                resu.forEach(function (_ram) {
                    var d100 = _ram.Diem / _ram.max;
                    d100 = d100.toPrecision(4) * 100;
                    d100 = d100.toFixed(2);
                    db.query("UPDATE DiemRAM SET Diem100 = " + d100 + "WHERE id_ram = " + _ram.id_ram + "");
                })
            })
            db.query("DELETE n1 FROM DiemRAM n1, DiemRAM n2 WHERE n1.NameRam = n2.NameRam AND n1.id_ram > n2.id_ram");

            db.query("INSERT INTO DiemHDD(Name,Diem) VALUES('" + hdd + "'," + d_hdd + ")");
            db.query("SELECT id,Diem,(SELECT MAX(Diem) FROM DiemHDD) as max FROM DiemHDD", function (err, resu) {
                resu.forEach(function (_hdd) {
                    var d100 = _hdd.Diem / _hdd.max;
                    d100 = d100.toPrecision(4) * 100;
                    d100 = d100.toFixed(2);
                    db.query("UPDATE DiemHDD SET Diem100 = " + d100 + "WHERE id = " + _hdd.id + "");
                })
            })
            db.query("DELETE n1 FROM DiemHDD n1, DiemHDD n2 WHERE n1.Name = n2.Name AND n1.id > n2.id");

            var que = "INSERT INTO laptop_details(Name, Price, CPU, VGA, RAM,HDD, Display, Link_sp, Src_img) VALUES("
                + "'" + ten + "'," + "'" + gia + "'," + "'" + cpu + "'," + "'" + vga + "'," + "'" + ram + "',"
                + "'" + hdd + "'," + "'" + mh + "'," + "'" + link_sp + "'," + "'NO');";
            db.query(que, function (err) {
                if (err) res.render("admin/themlaptop", { message: "Có lỗi xảy ra khi thêm laptop !!" });
            })
            db.query("SELECT @@IDENTITY as id", function (err, res) {
                que = "INSERT INTO diemLaptop(id) VALUES(" + res[0].id + ")";
                db.query(que);
                db.query("UPDATE diemLaptop d SET diemCPU = (SELECT diem100 FROM DiemCPU dc WHERE dc.Name = (SELECT CPU FROM laptop_details dl WHERE dl.id = d.id ))");
                db.query("UPDATE diemLaptop d SET diemVGA = (SELECT diem100 FROM DiemVGA dc WHERE dc.Name = (SELECT VGA FROM laptop_details dl WHERE dl.id = d.id ))");
                db.query("UPDATE diemLaptop d SET diemRAM = (SELECT diem100 FROM DiemRAM dr WHERE dr.NameRAM = (SELECT RAM FROM laptop_details dl WHERE dl.id = d.id ))");
                db.query("UPDATE diemLaptop d SET diemHDD = (SELECT diem100 FROM DiemHDD dc WHERE dc.Name = (SELECT HDD FROM laptop_details dl WHERE dl.id = d.id ))");
                db.query("UPDATE diemLaptop d SET diemMH = (SELECT diem100 FROM DiemMH dc WHERE dc.Ten_mh = (SELECT Display FROM laptop_details dl WHERE dl.id = d.id ))");
                db.query("UPDATE diemLaptop d SET diemTong = ROUND(((diemCPU + diemVGA)*2 +diemMH + diemHDD + diemRAM)/7,2) ")
            })

            // DOWNLOAD ẢNH, LƯU TÊN DƯỚI DẠNG ID.PNG

            db.query("SELECT @@IDENTITY as id", function (err, res) {
                options = {
                    url: link_ha,
                    dest: './public/img/laptop/' + res[0].id + '.png'
                }

                download.image(options)
                    .then(({ filename, image }) => {
                        var q = "UPDATE laptop_details SET Src_img = '" + 'img/laptop/' + res[0].id + '.png\' ' + 'WHERE id =' + res[0].id;
                        db.query(q, function (err) {
                            if (err) throw err;
                        });
                    })
                    .catch((err) => {
                        throw err;
                    })
            })
            var que = "SELECT Name FROM DiemCPU ORDER BY Name ASC";
            var f = function (callback) {
                db.query(que, function (err, cpu) {
                    callback(null, cpu);
                })
            }
            f(function (err, cpu) {
                db.query("SELECT Name FROM DiemVGA ORDER BY Name ASC", function (err, vga) {
                    res.render("admin/themlaptop", { cpus: cpu, vgas: vga, message: "Thêm sản phẩm thành công !!" });
                })
            })
        }
    }
}

exports.xoa_dx = function (req, res) {
    var message = "";
    var sess = req.session;
    var id = req.params.id;
    if (sess.user != undefined && sess.user.username == "admin") {

        var que = "DELETE FROM dexuat WHERE id= " + id;
        db.query(que);
        res.redirect('/admin/dexuat');
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
}

exports.dx = function (req, res) {
    var message = "";
    var sess = req.session;
    var id = req.params.id;
    if (sess.user != undefined && sess.user.username == "admin") {
        var que = "SELECT Name FROM DiemCPU ORDER BY Name ASC";
        var f = function (callback) {
            db.query(que, function (err, cpu) {
                callback(null, cpu);
            })
        }
        var f1 = function (callback) {
            db.query("SELECT Name,Link_sp FROM dexuat WHERE id = " + id, function (err, link) {
                callback(null, link);
            })
        }
        f(function (err, cpu) {
            f1(function (err, link) {
                db.query("SELECT Name FROM DiemVGA ORDER BY Name ASC", function (err, vga) {
                    res.render("admin/them_dx", { cpus: cpu, vgas: vga, link: link[0].Link_sp, name: link[0].Name });
                })
            })
        })
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
}