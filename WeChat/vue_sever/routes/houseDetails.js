const express = require("express")
const router = express.Router()
const pool = require("../pool")

router.get("/lunbo", (req, res) => {
    var cityid = req.query.cityid;
    var output = {a:[]};
    var sql = "SELECT * FROM aby_lunbo WHERE cityid=?"
    Promise.all([
        new Promise(function (open) {
            pool.query(sql, [cityid], (err, result) => {
                if (err) console.log(err);
                output.a = result;
                open();
            })
        })
    ]).then(function () {
        res.writeHead(200, {
            "Content-Type": "application/json;charset=utf-8",
            "Access-Control-Allow-Origin": "*"
        })
        res.write(JSON.stringify(output));
        res.end();
    })

})
module.exports = router;