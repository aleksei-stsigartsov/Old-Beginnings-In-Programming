
   class smallPhotoLib{
      constructor(id,photos){
	  for(var j=0; j<document.getElementById(id).childNodes.length; j++)
		{
			if(document.getElementById(id).childNodes[j].nodeName=="IMG")
			{
				photos.push(document.getElementById(id).childNodes[j].src);
				document.getElementById(id).removeChild(document.getElementById(id).childNodes[j]);
			}
		}
	  document.getElementById(id)
        var code = document.createElement("div");
        code.style.display = "inline-block";
        code.style.width = "300px";
        code.style.height = "300px";
        code.style.border = "1px solid black";
		code.style.overflow = "hidden";			
        var code2 = document.createElement("div");//крупный кадр
        code2.style.display = "inline-block";
        code2.style.width = "297px";
        code2.style.height = "200px";
        code2.style.border = "1px solid black";
        code.appendChild(code2);
		var code4 = document.createElement("div");
        code4.style.display = "block";
        code4.style.width =photos.length*62+"px";
        code4.style.height = "93px";
        code4.style.border = "1px solid black";

		for(var i=0; i<photos.length; i++)
		{
			var code3 = document.createElement("div");//маленький кадр
			code3.style.display = "inline-block";
			code3.style.width = "60px";
			code3.style.height = "90px";
			code3.style.border = "none";
			code3.style.margin = "1px";
			code3.style.backgroundImage="url("+photos[i]+")";
			code3.style.backgroundPosition="center center";
			code3.style.backgroundSize="cover";
			code3.addEventListener("click", function()
				{
				code2.style.backgroundImage=this.style.backgroundImage;
				});
			code4.appendChild(code3);
		}
		code.appendChild(code4);
		document.getElementById(id).appendChild(code);	
      }
    }
	lib1=Array()