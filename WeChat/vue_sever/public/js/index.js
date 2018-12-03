$(function(){
	$(".place>button").on("click", function (e){
		console.log(111);
		$btn = $(this);
		$("#hotPlace>div:gt(5)").css("display","none");
		$.ajax({
		url:"http://localhost:8000/index/getIndex",
		type:"get",
		dataType:"json", //JSON.parse(res)
		data:{cityid:$btn.attr("data-city")},
		success:function(res){
			console.log(res)
			var {img,price,family_title,title,xiang}=res;
			var html="";
			for (var img of res) {
				html+=`<div class="col-md-4 col-6 mt-3 pr-0">
				<img class="w-100" src="${img.img}"/>
				<p class="price">${img.price}</p>
				<div class="media">
				<div class="media-body align-self-center">
				<p class="family_title">${img.family_title}</p>
				<p  class="title">${img.title}</p>
				</div>
				<img src="${img.xiang}" class="rounded-circle ml-1 xiang">
				</div>
				</div>`;
			}
			$("#hotPlace").html(html);
		}
	  })
	})  
})