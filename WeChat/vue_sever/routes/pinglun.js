const express = require("express")
const router = express.Router()
const pool = require("../pool")

router.post("/comment", (req, res) => {
  var uname =req.session.uname;
  var date = new Date();
  var story = req.body.story;
  console.log(uname)
  res.writeHead(200, {
        "Content-Type": "application/json;charset=utf-8",
        "Access-Control-Allow-Origin": "*"
      })
  if(uname!=null){
    var sql1 = "INSERT INTO aby_pinglun values(null,null,?,?,?)";
        pool.query(sql1, [story, uname, date], (err, result) => {
          if (err) console.log(err);
            if(result.affectedRows>0){
              res.write(JSON.stringify({msg:"ok"}));
            }else{
              res.write(JSON.stringify({msg:"loss"}));
            }
            res.end();
        })
    
      
  }else{
    res.write(JSON.stringify({msg:"请登陆后重试"}));
    res.end();
  }
})

router.get("/comment_fenye",(req,res)=>{
  var output={
    count:0,
    pageSize:10,   //一页多少行
    data:[],
    pageIndex:req.query.pageIndex*1,
  }; 
  var progress=0;
  var sql1="SELECT count(*) as c from aby_pinglun"
  var sql2="SELECT * from aby_pinglun limit ?,? "

  pool.query(sql1,[],(err,result)=>{
    if(err) console.log(err);
    output.count=Math.ceil(result[0].c/output.pageSize);
    progress+=50;
    if(progress==100){
        res.send(output);
    }
  })
  var offset=(output.pageIndex)*output.pageSize;    //计算分页偏移量
  console.log(offset,output.pageSize)
  pool.query(sql2,[offset,output.pageSize],(err,result)=>{
      if(err) throw err;
      output.data=result;
      progress+=50;
      if(progress==100){
          res.send(output);
      }
  });
})
module.exports = router;