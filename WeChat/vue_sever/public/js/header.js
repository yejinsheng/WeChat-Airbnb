$(function () {
    //1. 动态创建link引用header.css
    //2. ajax请求header.html片段
    $.ajax({
        url: "http://localhost:8000/header.html",
        type: "get",
        //async:false,   //同步请求锁住浏览器
        success: function (res) {
            //console.log(res)
            $(".my_header").replaceWith(res)  //用指定内容替换被选元素

            $(".deng").on("click", function (e) {
                e.preventDefault();
                $("#loginDiv").css("display", "block")
            })
            $(".login").on("click", function () {
                
                var uname = $("input.uname").val();
                var upwd = $("input.upwd").val();

                (async function () {
                    var res = await $.ajax({
                        url: "http://localhost:8000/user/signin",
                        type: "post",
                        data: { uname, upwd },
                        dataType: "json"
                    })
                    console.log(uname, upwd)
                    if (res.ok == 0) {
                        alert(res.msg); 
                        $("#signout").show().next().hide();
                    }
                    else {
                        alert("登陆成功！即将返回你详情页面")
                        if (location.search.startsWith("?back=")) {
                            var url = location.search.slice(6)//location.search是返回url查询的部分 
                        } else {
                            var url = "aby_houseDetails.html";
                            $("#uname").html(uname);
                            console.log(uname)
                            $(".user_name").css("display","block")
                            $(".deng").css("display","none")
                            $("#loginDiv").css("display","none")
                        }
                    }
                })();
            })
        }
    })


})
function close1() {
    var str = document.getElementById("regisiterDiv");
    str.style.display = "none";
    document.body.style.overflow = "auto";
}
function open() {
    document.getElementById("loginDiv").style.display = "none";
    var str = document.getElementById("regisiterDiv");
    str.style.display = "block";
    document.body.style.overflow = "hidden";
}
function open2() {
    document.getElementById("regisiterDiv").style.display = "none";
    var str = document.getElementById("loginDiv");
    str.style.display = "block";
    // document.body.style.overflow = "hidden";

}
function close2() {
    console.log(895465)
    var str = document.getElementById("loginDiv");

    // document.body.style.overflow = "auto";

}




