$(function(){
    $(".deng").on("click",function(){
        console.log(66666)
    })
    $("#loginDiv>logDiv>input.login").click(function(){
        var uname=$("input.uname").val();
        var upwd=$("input.upwd").val();
        console.log(565656)
        (async function(){
            console.log(1111)
            var res=await $.ajax({ 
                url:"http://localhost:8000/user/signin",
                type:"post",
                data:{uname,upwd},
                dataType:"json"
            })
            console.log(uname,upwd)
            if(res.ok==0)
              alert(res.msg);
            else{
                alert("登陆成功！即将返回你详情页面")
                console.log(2222)
                if(location.search.startsWith("?back=")){
                var url=location.search.slice(6)//location.search是返回url查询的部分 
                }else{
                    var url="index.html";
                }
                location.href=url;
            }
        })();
    })
})