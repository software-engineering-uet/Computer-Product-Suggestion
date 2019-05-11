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
        if (lc == "capnhat") {

        }
        if (lc == "users") {
            var que = "SELECT *FROM users";
            db.query(que, function (err, resu, f) {
                res.render("admin/users", { message: message, users: resu });
            })
        }
        if (lc == "dexuat") {

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
        db.query("SELECT id,Diem,(SELECT MAX(Diem) FROM DiemCPU) as max FROM DiemCPU", function(err,resu){
            resu.forEach(function(cpu){
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
