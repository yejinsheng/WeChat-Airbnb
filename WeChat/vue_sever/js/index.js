$(function () {
	/*var imgs = {
		'chq': [
			{ img: "img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg", price: "$79每晚", title: "【华夏】恒福文化区独门花园oft古典", family_title: "整间阁楼·1室1床1卫", xiang: "touxiang/nv1.jpg" },
			{ img: "img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg", price: "$79每晚", title: "【华夏】恒福文化区独门花园oft古典", family_title: "整间阁楼·1室1床1卫", xiang: "touxiang/nv1.jpg" },
			{ img: "img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg", price: "$79每晚", title: "【华夏】恒福文化区独门花园oft古典", family_title: "整间阁楼·1室1床1卫", xiang: "touxiang/nv1.jpg" },
			{ img: "img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg", price: "$79每晚", title: "【华夏】恒福文化区独门花园oft古典", family_title: "整间阁楼·1室1床1卫", xiang: "touxiang/nv1.jpg" },
			{ img: "img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg", price: "$79每晚", title: "【华夏】恒福文化区独门花园oft古典", family_title: "整间阁楼·1室1床1卫", xiang: "touxiang/nv1.jpg" },
			{ img: "img/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg", price: "$79每晚", title: "【华夏】恒福文化区独门花园oft古典", family_title: "整间阁楼·1室1床1卫", xiang: "touxiang/nv1.jpg" }
		],
		'bj': [
			{ img: "img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg", price: "$66每晚", title: "二环里北京胡同独门独院什刹海，鼓楼都靠近中心", family_title: "独立房间·1室2床1卫", xiang: "touxiang/nan1.jpg" },
			{ img: "img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg", price: "$66每晚", title: "二环里北京胡同独门独院什刹海，鼓楼都靠近中心", family_title: "独立房间·1室2床1卫", xiang: "touxiang/nan1.jpg" },
			{ img: "img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg", price: "$66每晚", title: "二环里北京胡同独门独院什刹海，鼓楼都靠近中心", family_title: "独立房间·1室2床1卫", xiang: "touxiang/nan1.jpg" },
			{ img: "img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg", price: "$66每晚", title: "二环里北京胡同独门独院什刹海，鼓楼都靠近中心", family_title: "独立房间·1室2床1卫", xiang: "touxiang/nan1.jpg" },
			{ img: "img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg", price: "$66每晚", title: "二环里北京胡同独门独院什刹海，鼓楼都靠近中心", family_title: "独立房间·1室2床1卫", xiang: "touxiang/nan1.jpg" },
			{ img: "img/d585de1a-6bfa-4a2b-aa48-c7eccecb1a31.jpg", price: "$66每晚", title: "二环里北京胡同独门独院什刹海，鼓楼都靠近中心", family_title: "独立房间·1室2床1卫", xiang: "touxiang/nan1.jpg" }
		],
		'hz': [
			{ img: "img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg", price: "$270每晚", title: "西湖之巅零距离海景房|西湖、地铁站、河边走一走", family_title: "整套酒店式公寓·1室2床1卫", xiang: "touxiang/nv2.jpg" },
			{ img: "img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg", price: "$270每晚", title: "西湖之巅零距离海景房|西湖、地铁站、河边走一走", family_title: "整套酒店式公寓·1室2床1卫", xiang: "touxiang/nv2.jpg" },
			{ img: "img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg", price: "$270每晚", title: "西湖之巅零距离海景房|西湖、地铁站、河边走一走", family_title: "整套酒店式公寓·1室2床1卫", xiang: "touxiang/nv2.jpg" },
			{ img: "img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg", price: "$270每晚", title: "西湖之巅零距离海景房|西湖、地铁站、河边走一走", family_title: "整套酒店式公寓·1室2床1卫", xiang: "touxiang/nv2.jpg" },
			{ img: "img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg", price: "$270每晚", title: "西湖之巅零距离海景房|西湖、地铁站、河边走一走", family_title: "整套酒店式公寓·1室2床1卫", xiang: "touxiang/nv2.jpg" },
			{ img: "img/7f1e0bc8-6b4c-465d-bca7-487e46997b86.jpg", price: "$270每晚", title: "西湖之巅零距离海景房|西湖、地铁站、河边走一走", family_title: "整套酒店式公寓·1室2床1卫", xiang: "touxiang/nv2.jpg" }
		],
		'chd': [
			{ img: "img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg", price: "$138每晚", title: "成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有", family_title: "独立房间·1室1床1卫", xiang: "touxiang/nan2.jpg" },
			{ img: "img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg", price: "$138每晚", title: "成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有", family_title: "独立房间·1室1床1卫", xiang: "touxiang/nan2.jpg" },
			{ img: "img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg", price: "$138每晚", title: "成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有", family_title: "独立房间·1室1床1卫", xiang: "touxiang/nan2.jpg" },
			{ img: "img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg", price: "$138每晚", title: "成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有", family_title: "独立房间·1室1床1卫", xiang: "touxiang/nan2.jpg" },
			{ img: "img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg", price: "$138每晚", title: "成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有", family_title: "独立房间·1室1床1卫", xiang: "touxiang/nan2.jpg" },
			{ img: "img/1e8a3dec-ca92-4961-aabd-d1286e9dce95.jpg", price: "$138每晚", title: "成都柴犬汪星人和英短喵星人的屋顶花园乐园值得你拥有", family_title: "独立房间·1室1床1卫", xiang: "touxiang/nan2.jpg" }
		],
		'ld': [
			{ img: "img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg", price: "$637每晚", title: "Stylish room /10 mins to Big Ben", family_title: "独立房间·1室1床1.5卫", xiang: "touxiang/nv3.jpg" },
			{ img: "img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg", price: "$637每晚", title: "Stylish room /10 mins to Big Ben", family_title: "独立房间·1室1床1.5卫", xiang: "touxiang/nv3.jpg" },
			{ img: "img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg", price: "$637每晚", title: "Stylish room /10 mins to Big Ben", family_title: "独立房间·1室1床1.5卫", xiang: "touxiang/nv3.jpg" },
			{ img: "img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg", price: "$637每晚", title: "Stylish room /10 mins to Big Ben", family_title: "独立房间·1室1床1.5卫", xiang: "touxiang/nv3.jpg" },
			{ img: "img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg", price: "$637每晚", title: "Stylish room /10 mins to Big Ben", family_title: "独立房间·1室1床1.5卫", xiang: "touxiang/nv3.jpg" },
			{ img: "img/49615eb5-e197-4d1f-8c8c-0331b4d2df77.jpg", price: "$637每晚", title: "Stylish room /10 mins to Big Ben", family_title: "独立房间·1室1床1.5卫", xiang: "touxiang/nv3.jpg" }
		],
		'tb': [
			{ img: "img/4b164004_original.jpg", price: "$312每晚", title: "Best location!雙捷运大安站Da'an MRT 1min【Da'an B】", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/nan3.jpg" },
			{ img: "img/4b164004_original.jpg", price: "$312每晚", title: "Best location!雙捷运大安站Da'an MRT 1min【Da'an B】", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/nan3.jpg" },
			{ img: "img/4b164004_original.jpg", price: "$312每晚", title: "Best location!雙捷运大安站Da'an MRT 1min【Da'an B】", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/nan3.jpg" },
			{ img: "img/4b164004_original.jpg", price: "$312每晚", title: "Best location!雙捷运大安站Da'an MRT 1min【Da'an B】", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/nan3.jpg" },
			{ img: "img/4b164004_original.jpg", price: "$312每晚", title: "Best location!雙捷运大安站Da'an MRT 1min【Da'an B】", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/nan3.jpg" },
			{ img: "img/4b164004_original.jpg", price: "$312每晚", title: "Best location!雙捷运大安站Da'an MRT 1min【Da'an B】", family_title: "整套公寓·1室1床1卫", xiang: "nan3.jpg" }
		],
		'dj': [
			{ img: "img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg", price: "$381每晚", title: "新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!", family_title: "整套公寓·1室2床1卫", xiang: "touxiang/couple1.jpg" },
			{ img: "img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg", price: "$381每晚", title: "新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!", family_title: "整套公寓·1室2床1卫", xiang: "touxiang/couple1.jpg" },
			{ img: "img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg", price: "$381每晚", title: "新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!", family_title: "整套公寓·1室2床1卫", xiang: "touxiang/couple1.jpg" },
			{ img: "img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg", price: "$381每晚", title: "新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!", family_title: "整套公寓·1室2床1卫", xiang: "touxiang/couple1.jpg" },
			{ img: "img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg", price: "$381每晚", title: "新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!", family_title: "整套公寓·1室2床1卫", xiang: "touxiang/couple1.jpg" },
			{ img: "img/5bd2be5a-c3c9-48d7-8294-b7d3a01b312d.jpg", price: "$381每晚", title: "新宿!免费 Wi-Fi + 优越的地理位置 + 干净的房间!", family_title: "整套公寓·1室2床1卫", xiang: "touxiang/couple1.jpg" }
		],
		'bl': [
			{ img: "img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg", price: "$873每晚", title: "Modern Upscale Flat Eiffel Beaugrenelle", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/couple2.jpg" },
			{ img: "img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg", price: "$873每晚", title: "Modern Upscale Flat Eiffel Beaugrenelle", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/couple2.jpg" },
			{ img: "img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg", price: "$873每晚", title: "Modern Upscale Flat Eiffel Beaugrenelle", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/couple2.jpg" },
			{ img: "img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg", price: "$873每晚", title: "Modern Upscale Flat Eiffel Beaugrenelle", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/couple2.jpg" },
			{ img: "img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg", price: "$873每晚", title: "Modern Upscale Flat Eiffel Beaugrenelle", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/couple2.jpg" },
			{ img: "img/ea9ceb4c-a8e4-4eb2-925b-ee8f9f99fc16.jpg", price: "$873每晚", title: "Modern Upscale Flat Eiffel Beaugrenelle", family_title: "整套公寓·1室1床1卫", xiang: "touxiang/couple2.jpg" }
		]
	};*/
	$.ajax({
		url:"http://localhost:8000/index",
		type:"get",
		data:{res},
		dataType:"json" //JSON.parse(res)
		
	  }).then(res=>{
		  console.log(res)
		  var {img,price,family_title,title,xiang}=res;
	// $(".place>button").on("click", function () {
	// 	$btn = $(this);
	// 	var curImgs=imgs[$btn.attr("data-city")];
	// 	if(curImgs){
			var html="";
			for (var img of curImgs) {
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
			//$("#hotPlace").html(html);
			var str=$("#hotPlace").children[0];
			str.innerHTML=html;
		//}
	//})
	//$(".place>button:first-child").click();
})
})