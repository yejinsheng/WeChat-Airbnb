//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const session = require('express-session');
const pool = require('./pool');

const cors=require("cors");

/*引入路由模块*/
const index = require("./routes/index");
const user = require("./routes/user");
const pinglun = require("./routes/pinglun")
const details=require("./routes/houseDetails.js")

var app = express();
app.use(cors({
    origin:'http://localhost:8080',
    credentials:true
  }))
var server = app.listen(8000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({ extended: false }));
//托管静态资源到public目录下
app.use(express.static('public'));
// app.use(express.static('css'));
// app.use(express.static('js'));
// app.use(express.static('img_house'));
// app.use(express.static('touxiang'));

app.use(session({   //配置session中间件 请求中可使用req.session
    secret: '128位随机字符串',
    resave: false,
    cookie:{maxAge:60*1000*30},
    saveUninitialized: true,
}))
app.use(function (req, res, next) {
    　　res.header("Access-Control-Allow-Credentials", "true");
    　　res.header('Access-Control-Allow-Origin', 'http://localhost:8080');
    　　// res.header('Access-Control-Allow-Origin', '*');
    　　res.header('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
    　　res.header('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');
    　　if (req.method == 'OPTIONS') {
    　　　　res.send(200); /*让options请求快速返回*/
    　　} else {
    　　　　next();
    　　}
})
/*使用路由器来管理路由*/
app.use("/index", index);
app.use("/user",user);
app.use("/pinglun",pinglun)
app.use("/lunbo",details)



app.get("/personlist", (req, res) => {
    var obj = [
    { id: 1, img_url: "http://localhost:8000/img_person/person_1.png" },
    { id: 2, img_url: "http://localhost:8000/img_person/person_2.png" },
    { id: 3, img_url: "http://localhost:8000/img_person/person_3.png" }]
    res.send(obj);
});
app.get("/imagelist", (req, res) => {
    var obj = [{ id: 1, img_url: "http://localhost:8000/img/717fef15-755d-4d52-b9c4-ed12e2300db5.jpg" },
    { id: 2, img_url: "http://localhost:8000/img/e772f521-30e7-4513-b1d4-449cfc688a13.jpg" },
    { id: 3, img_url: "http://localhost:8000/img/85b4835d-08e6-4962-a233-2ceca64524d1.jpg" },
    { id: 4, img_url: "http://localhost:8000/img/cc82f4ce-5037-477f-a1f7-c365828ef05e.jpg" }]
    res.send(obj);
});
app.get("/cardlist",(req,res)=>{
    var pno = req.query.pno;
    var pageSize = req.query.pageSize;
    var sql = "SELECT count(cityid) as c FROM aby_housedetails";
    var obj = {};
    var progress = 0;
    pool.query(sql, (err, result) => {
        if (err) throw err;
        obj.pageCount = Math.ceil(result[0].c / pageSize);
        progress += 50;
        if (progress == 100) {
            res.send(obj);
        }
    });
    var sql = "SELECT * FROM aby_housedetails LIMIT ?,?";
    var offset = (pno - 1) * pageSize;
    pageSize = parseInt(pageSize);
    pool.query(sql, [offset, pageSize], (err, result) => {
        if (err) throw err;
        obj.data = result;
        progress += 50;
        if (progress == 100) {
            res.send(obj);
        }
    });
});