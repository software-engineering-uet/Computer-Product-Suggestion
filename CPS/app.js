var express = require('express');
var app = express();
var update = require('./update/update');
var updatehdd = require('./update/update_hdd');
var update_bm = require('./update/update_bechmark');
var mysql = require('mysql');
var user = require('./routes/user');
var kqs = require('./routes/ketqua');
var chitiet = require('./routes/chitiet')
var session = require('express-session');
var bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
var con = mysql.createConnection({
  database: 'laptops',
  host: 'localhost',
  user: 'hieu',
  password: '123456789',
  port : 3306
});
con.connect(function (err) {
  if (err) console.log(err);
  else console.log("Connected");
});
global.db = con;
app.use(express.static("public"));
app.set('view engine', 'ejs');
app.set('views', 'views');
app.use(session({
  secret: 'keyboard cat',
  resave: false,
  save: false,
  saveUninitialized: true,
  cookie: { maxAge: 60000000000 }
}))
app.listen(3000);

app.get("/", user.login);
app.post('/', user.login);
app.get("/search", user.search);
app.get("/de-xuat", user.dexuat);
app.post("/de-xuat", user.guidexuat);

app.get("/chi-tiet/:id/:name", chitiet.details);
app.post("/danhsach", chitiet.them);
app.post("/xoasp", chitiet.xoa);
app.get("/sosanh", chitiet.sosanh);
app.get("/danhsach", chitiet.them);
app.get("/search/:nd", user.kq);
app.get("/tat-ca", kqs.tatca);
app.get("/tat-ca/:lc", kqs.lch);
update_bm.upd_hdd();