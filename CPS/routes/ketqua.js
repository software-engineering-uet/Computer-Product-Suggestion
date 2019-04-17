exports.tatca = function (req, res) {
    var sess = req.session;
    //LOGIN
    var que = "SELECT *FROM laptop_details";
    var message = "";
    db.query(que, function (err, result) {
        if (err) throw err;
        else {
            res.render('search.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username, laps: result });
        }
    })
};
exports.lch = function (req, res) {
    var sess = req.session;
    var lc = req.params.lc;
    //LOGIN
    var que;
    if (lc == "duoi-5tr") {
        que = "SELECT *FROM laptop_details WHERE Price <= 5000000 ORDER BY Price ASC";
    };
    if (lc == "tu-5-10tr") {
        que = "SELECT *FROM laptop_details WHERE Price > 5000000 AND Price <= 10000000 ORDER BY Price ASC";
    }
    if (lc == "tu-10-15tr") {
        que = "SELECT *FROM laptop_details WHERE Price > 10000000 AND Price <= 15000000 ORDER BY Price ASC";
    }
    if (lc == "tu-15-20tr") {
        que = "SELECT *FROM laptop_details WHERE Price > 15000000 AND Price <= 20000000 ORDER BY Price ASC";
    }
    if (lc == "tren-20tr") {
        que = "SELECT *FROM laptop_details WHERE Price > 20000000 ORDER BY Price ASC";
    }

    var message = "";
    db.query(que, function (err, result) {
        if (err) throw err;
        else {
            res.render('search.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username, laps: result });
        }
    })
};