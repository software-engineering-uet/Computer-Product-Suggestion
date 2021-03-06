exports.details = function (req, res) {
    var sess = req.session;
    var message = "";
    var id = req.params.id;
    var que = "SELECT *FROM laptop_details WHERE id = " + id;
    if (id <= 41) {
        for (var i = 1; i < 10; i++) {
            que += " OR id = " + ((Number(id) + i));
        }
        que += " ORDER BY `laptop_details`.`id` ASC";
    }
    else {
        for (var i = 1; i < 40; i++) {
            que += " OR id = " + ((Number(id) - i));
        }
        que += " ORDER BY `laptop_details`.`id` DESC";
    }
    var q = "SELECT * FROM diemLaptop WHERE id = " + id;
    var l = function (callback) {
        db.query(q, function (err, resu) {
            callback(null, resu)
        })
    }
    l(function (err, resu) {
        db.query(que, function (err, result) {
            if (err) throw err;
            else {
                res.render('chi_tiet.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username, laps: result, diem: resu });
            }
        })
    })

}
exports.sosanh = function (req, res) {
    var sess = req.session;
    var message = "";
    if (sess.user == undefined) {
        var message = "Bạn cần đăng nhập để thực hiện chức năng";
        res.render('home.ejs', { message: message, data: "Guest" });
    }
    else {
        var query = "SELECT ld.*,d.* FROM laptop_details as ld ,diemLaptop as d WHERE (d.id IN (SELECT lap1 FROM users WHERE username = '" + sess.user.username + "')";
        query += " OR d.id IN (SELECT lap2 FROM users WHERE username = '" + sess.user.username + "')";
        query += " OR d.id IN (SELECT lap3 FROM users WHERE username = '" + sess.user.username + "')) AND d.id = ld.id";
        db.query(query, function (err, resu) {
            if (err) console.log(query);
            else {
                res.render('ds_ss.ejs', { message: message, data: sess.user.username, laps: resu });
            }
        })
    }
}
exports.them = function (req, res) {
    var sess = req.session;
    var user = req.session.user.username;
    if (req.method == "POST") {
        message = "";
        var que = "SELECT lap1,lap2,lap3 FROM users WHERE username='" + user + "'";
        db.query(que, function (err, result) {
            if (err) console.log(que);
            else {
                if (result[0].lap1 != null && result[0].lap2 != null && result[0].lap3 != null) {
                    message = "Danh sách so sánh đã tối đa !!!";
                    var query = "SELECT ld.*,d.* FROM laptop_details as ld ,diemLaptop as d WHERE (d.id IN (SELECT lap1 FROM users WHERE username = '" + sess.user.username + "')";
                    query += " OR d.id IN (SELECT lap2 FROM users WHERE username = '" + sess.user.username + "')";
                    query += " OR d.id IN (SELECT lap3 FROM users WHERE username = '" + sess.user.username + "')) AND d.id = ld.id";
                    db.query(query, function (err, resu) {
                        if (err) console.log(query);
                        else {
                            res.render('ds_ss.ejs', { message: message, data: sess.user.username, laps: resu });
                        }
                    })
                }
                else {
                    if (result[0].lap1 == req.body.id || result[0].lap2 == req.body.id || result[0].lap3 == req.body.id) {
                        message = "Sản phẩm đã có trong danh sách";
                    }
                    else {
                        if (result[0].lap1 == null)
                            db.query("UPDATE users SET lap1 = " + req.body.id + " WHERE username = '" + user + "'");
                        else if (result[0].lap2 == null)
                            db.query("UPDATE users SET lap2 = " + req.body.id + " WHERE username = '" + user + "'");
                        else if (result[0].lap3 == null)
                            db.query("UPDATE users SET lap3 = " + req.body.id + " WHERE username = '" + user + "'");
                        message = "Đã thêm vào danh sách !!";
                    }
                    var query = "SELECT ld.*,d.* FROM laptop_details as ld ,diemLaptop as d WHERE (d.id IN (SELECT lap1 FROM users WHERE username = '" + sess.user.username + "')";
                    query += " OR d.id IN (SELECT lap2 FROM users WHERE username = '" + sess.user.username + "')";
                    query += " OR d.id IN (SELECT lap3 FROM users WHERE username = '" + sess.user.username + "')) AND d.id = ld.id";
                    db.query(query, function (err, resu) {

                        res.render('ds_ss.ejs', { message: message, data: sess.user.username, laps: resu });
                    })
                }
            }
        })
    }
}
exports.xoa = function (req, res) {
    var sess = req.session;
    var user = req.session.user.username;
    var id = req.body.id_del;
    if (req.method == "POST") {
        var query = "UPDATE users SET lap1 = NULL WHERE username = '" + user + "' AND lap1 = " + id + "; ";
        db.query(query);
        query = "UPDATE users SET lap2 = NULL WHERE username = '" + user + "' AND lap2 = " + id + "; ";
        db.query(query);
        query = "UPDATE users SET lap3 = NULL WHERE username = '" + user + "' AND lap3 = " + id + ";";
        db.query(query);
        message = "Đã xóa sản phẩm !!!";
        var query = "SELECT ld.*,d.* FROM laptop_details as ld ,diemLaptop as d WHERE (d.id IN (SELECT lap1 FROM users WHERE username = '" + sess.user.username + "')";
        query += " OR d.id IN (SELECT lap2 FROM users WHERE username = '" + sess.user.username + "')";
        query += " OR d.id IN (SELECT lap3 FROM users WHERE username = '" + sess.user.username + "')) AND d.id = ld.id";
        db.query(query, function (err, resu) {
            res.render('ds_ss.ejs', { message: message, data: sess.user.username, laps: resu });
        })

    }
}
