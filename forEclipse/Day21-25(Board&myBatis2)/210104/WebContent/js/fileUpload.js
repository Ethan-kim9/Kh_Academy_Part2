/**
 * 파일 첨부 및 이미지미리보기 구현
 * 201230
 */

let fileAttCnt = 1;

let style_div = "border:1px solid #00f;width:120px;height:100px;"
			  + "display:inline-block;position:relative;";

let style_delBtn = "position:absolute;bottom:2px;right:2px;border-width:0;"
				 + "font-size:40px; color:#f00; opacity:0.5; background-color:rgba(0,0,0,0)";


let fileUpload = function(attZone){
	let zone = document.getElementById(attZone);
	append(zone);
}

let append = function(zone){
	
	let div = document.createElement("div");
	div.setAttribute("style",style_div);
	

	let img = document.createElement("img");
	img.setAttribute("src", "http://placehold.it/120X100");
	img.setAttribute("width","120px");
	img.setAttribute("height","100px");
	div.appendChild(img);
	
	img.onclick = function(event){
		imgPreView(zone , event);
	}
	

	let file = document.createElement("input");
	file.setAttribute("type", "file");
	file.setAttribute("name", "attfile" + fileAttCnt);
	file.setAttribute("style", "display:none;");
	file.setAttribute("modify","no");
	file.setAttribute("class", "attfile");
	fileAttCnt++;
	
	let delBtn = document.createElement("input");
	delBtn.setAttribute("type", "button");
	delBtn.setAttribute("value", "x");
	delBtn.setAttribute("style", style_delBtn);
	
	delBtn.onclick = function(event){
		let element = event.srcElement;
		let parent = element.parentNode;
		let imgUploadCheck = parent.getElementsByClassName("attfile").item(0);
		
		if(imgUploadCheck.getAttribute("modify") == "yes") zone.removeChild(parent);			
	}
	
	div.appendChild(file);
	div.appendChild(delBtn);	
	
	zone.appendChild(div);
}

function imgPreView(zone, event){

	let tag = event.srcElement;
	let parentDiv = tag.parentNode;
	let file = parentDiv.getElementsByClassName("attfile").item(0);
	
	file.click();
	
	
	file.onchange = function(event2){
		if(file.getAttribute("modify") == "no"){
			append(zone);
		}

		let url = event2.srcElement.files[0];
		let reader = new FileReader();
		reader.readAsDataURL(url);
		reader.onload = function(event3){
			tag.src = event3.target.result;
			file.setAttribute("modify", "yes");
		}
	}
}