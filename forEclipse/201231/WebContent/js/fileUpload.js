/**
 * 파일 첨부 및 이미지미리보기 구현
 * 201230
 */

let style_div = "border:1px solid #00f;width:120px;height:100px;"
	+"display:inline-block;position:relative;";

let style_delBtn = "position:absolute;bottom:2px;right:2px;border-width:0;"
	+ "font-size:40px; color:#f00; opacity:0.5; background-color:rgba(0,0,0,0)";


let fileUpload = function(attZone){
	let zone = document.getElementById(attZone);
	append(zone);
}

let append = function(zone){
	
	let div = document.createElement("div");
	div.setAttribute("style",style_div);
	
	div.onclick = function(){
		append(zone);
	}
	
	zone.appendChild(div);
	
	let delBtn = document.createElement("input");
	delBtn.setAttribute("type", "button");
	delBtn.setAttribute("value", "x");
	delBtn.setAttribute("style", style_delBtn);
	
	div.appendChild(delBtn);	
	
}