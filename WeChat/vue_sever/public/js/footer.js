$(function(){
    //1. 动态创建link引用header.css
    //2. ajax请求header.html片段
    $.ajax({
      url:"http://localhost:8000/footer.html",
      type:"get",
      success:function(res){
        $(".my_footer").replaceWith(res)
        }
    })

})