exports.login = function (req, res) {
    var message = '';
    var sess = req.session;

    if (req.method == "POST") {
        var post = req.body;
        var username = post.username_login;
        if (username == undefined) {
            var username1 = post.username_signup;
            var pass = post.password_signup;
            var mail = post.email;
            var q = "INSERT INTO users(username, password, email) VALUES ('" + username1 + "','" + pass + "','" + mail + "')";
            db.query(q, function (err, result) {

                if (err) {
                    message = 'Tài khoản đã tồn tại !';
                    res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
                }
                else {
                    req.session.user = result[0];
                    message = 'Tạo tài khoản thành công !';
                    res.render('home.ejs', { message: message, data: 'Guest' });
                }

            })
        } else {
            var pass = post.pass_login;
            var q = "SELECT * FROM `users` WHERE `username` = '" + username + "' AND password = '" + pass + "';";
            db.query(q, function (err, result) {
                if (result.length) {
                    message = "Đăng nhập thành công !"
                    req.session.user = result[0];
                    res.render('home.ejs', { message: message, data: sess.user.username });
                }
                else {
                    message = "Tên đăng nhập hoặc mật khẩu không chính xác !";
                    res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
                }
            });
        }
    }
    else {
        res.render('home.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
};
exports.search = function (req, res) {
    var sess = req.session;
    //LOGIN
    var que = "SELECT *FROM laptop_details LIMIT 9";
    var message = "";
    db.query(que, function (err, result) {
        if (err) throw err;
        else {
            res.render('search.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username, laps : result });
        }
    })
    //DS SẢN PHẨM


};  
exports.kq = function(req, res){
    var nd = req.params.nd;
    var message = "";
    var sess = req.session;
    nd=nd.split("&").join(" ");
    nd=nd.split("-").join("");
    var que = "SELECT *FROM laptop_details WHERE Name LIKE '%" + nd +"%'";
    db.query(que , function(err, result){
        if (err) throw err;
        else {
            res.render('search.ejs', { message: message, data: (sess.user == undefined) ? "Guest" : sess.user.username, laps : result });
        }
    })
}
exports.dexuat = function (req,res ){
    var message1 = "";
    var sess = req.session;
    if (sess.user == undefined) {
        message1 = "Bạn cần đăng nhập để thực hiện chức năng này !";
        res.render('de_xuat.ejs', { message: "", message1 : message1 , data: (sess.user == undefined) ? "Guest" : sess.user.username });
    }
    else {
        res.render('de_xuat.ejs', { message: "", message1 : message1 , data: sess.user.username });
    }
}
exports.guidexuat = function (req,res){
    if (req.method = "POST"){
        var message1 = "";
        var sess = req.session;
        var name = req.body.name;
        var link =req.body.link;
        var username = sess.user.username;
        var que = "INSERT INTO dexuat(username,Name,Link_sp) VALUES ('" + username + "','" + name + "','" + link +"')";
        db.query(que);
        res.render('de_xuat.ejs', { message: "", message1 : message1 , data: sess.user.username });
    }
}