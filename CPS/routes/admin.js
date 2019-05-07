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
                res.render("admin/list_ad", { message: message, laps: resu});
            })

        }
        if (lc == "capnhat") {

        }
        if (lc == "users") {
            var que = "SELECT *FROM users";
            db.query(que, function (err, resu, f) {
                res.render("admin/users", { message: message, users: resu});
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
        var que = "DELETE FROM laptop_details WHERE id= " + id ;
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
        var que = "DELETE FROM users WHERE id= " + id ;
        db.query(que, function (err, resu, f) {
            res.redirect('/admin/users');
        })
    }
    else {
        var message = "Bạn không có quyền truy cập !"
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
}