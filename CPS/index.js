var express = require('express');
var app = express();
var update = require('./update');
var mysql = require('mysql');
var con = mysql.createConnection({
    database: 'laptops',
    host: 'localhost',
    user: 'root',
    password: '123456789'
});
con.connect(function (err) {
    console.log("Connected");
});
app.use(express.static("public"));
app.set('view engine' , 'ejs');
app.set('views', 'views');
// app.listen(3000);

// app.get("/" , function(req , res){
//     res.render('home');
// });

// app.get("/search" , function(req , res){
//     res.render('search');
// });
// app.get("/admin/update" , function(req , res){
//     update.update(con);
// });
update.update(con);
