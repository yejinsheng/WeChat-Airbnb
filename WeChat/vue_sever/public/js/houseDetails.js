window.onscroll = function () {
    var scroll = document.documentElement.scrollTop;
    if (scroll >= 800 && scroll <= 3600) {
        $(".my_nav").css("display", "block");
        $(".my_nav").css("position", "fixed");
        $(".my_nav").css("top", "0");
        $(".my_right").css("position", "fixed");
        $(".my_right").css("top", "0");
        $(".my_right").css("right", "16.2%");
    } else {
        $(".my_nav").css("position", "static");
        $(".my_right").css("position", "static");
    }
}
$(function () {
    $(".pinglun").on("click", function () {
        var story = $("#textarea").val()
        $.ajax({
            url: "http://localhost:8000/pinglun/comment",
            type: "post",
            data: { story },
            dataType: "json",
            success: function (output) {
                if (output.msg != "loss") {
                    alert("发表成功");
                    var html="";
                    for(p of output.msg){
                   
                    html+=`<hr style="width:75%"><div>
                    <img src="touxiang/nv1.jpg" alt="" class="rounded-circle ml-1">
                </div>
                 <div>
                     <span>${p.story}</span>
                     <span>${p.date}</span>
                 </div>`;
                 console.log(111)
                }
                    $(".show_pinglun").html(html);
                } else {
                    alert(output.msg)
                }
            }
        })
    })
     $.ajax({
            url: "http://localhost:8000/lunbo/lunbo",
            type: "get",
            data:{cityid:$(".lunbo_left").attr("data-city")},
            success:function(output){
                var {a } = output
                var html="";
                for(var p of a){
                    html+=`<div class="col-4" style="transition:all .3s;">
                    <img style="width:333px;height:222px" src="${p.img_lunbo}" />
                    <p class="price">￥${p.price}</p>
                    <div class="media">
                        <div class="media-body align-self-center">
                            <p class="family_title">${p.lunbo_family_title}</p>
                            <p class="title">${p.lunbo_title}</p>
                        </div>
                    </div>
                </div>`
                }
            $(".lunbo").html(html); 
            }
        })
       
    var index=0;
    $(".lunbo_left").on("click", function () {
        if(index<=0){
            $(".lunbo").children().first().css("marginLeft",0)
        }else{
            index--;
            console.log($(".lunbo").children().first())
            $(".lunbo").children().first().css("marginLeft",-372*index)
        } 
      }) 
    $(".lunbo_right").on("click",function(){  
        if(index>4){
            return;
        }else{
            index++;
            $(".lunbo").children().first().css("marginLeft",-372*index)
        }
        
    })

})
