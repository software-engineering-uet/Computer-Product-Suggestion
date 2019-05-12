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
                    res.render("admin/themlaptop", { cpus: cpu, vgas: vga });
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
        var post = req.body;
        var ten = post.ten;
        var link_sp = post.linksp;
        var link_ha = post.linkanh;
        var mh = post.manhinh;
        var gia = post.giaban;
        var ram = post.ram;
        var hdd = post.hdd;
        var vga = post.vga;
        var cpu = post.cpu;

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
            db.query("SELECT Link_sp FROM dexuat WHERE id = " + id, function (err, link) {
                callback(null, link[0].Link_sp);
            })
        }
        f(function (err, cpu) {
            f1(function (err, link) {
                db.query("SELECT Name FROM DiemVGA ORDER BY Name ASC", function (err, vga) {
                    res.render("admin/them_dx", { cpus: cpu, vgas: vga, link: link });
                })
            })
        })
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
}