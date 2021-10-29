function createBoard(C, R, collWidth, rowHeight) 
{
        colors = ["#5F9EA0","#FAEBD7"];

        var box = document.createElement("div");

        var attr1 = document.createAttribute("class");
        var attr2 = document.createAttribute("id");

        attr1.value="gameBoard";
        attr2.value="gameBoard";

        box.attributes.setNamedItem(attr1);
        box.attributes.setNamedItem(attr2);

        document.body.appendChild(box);
        document.getElementById("gameBoard").style.width 
        = (C * (collWidth + 2)) + "px";
        document.getElementById("gameBoard").style.height 
        = (R * (rowHeight + 2)) + "px";

        c = 0;
        for (i = 0; i < (C * R); i++)
        {
        miniBox = document.createElement("div");
        attr1 = document.createAttribute("class");
        attr2 = document.createAttribute("onclick");
        attr1.value = "gameCell";
        attr2.value = "turn(this)";
        miniBox.attributes.setNamedItem(attr1);
        miniBox.attributes.setNamedItem(attr2);
        miniBox.style.width = collWidth + "px";
        miniBox.style.height = rowHeight + "px";
        miniBox.style.backgroundColor = colors[c];
        c = 1 - c;
        if ((i + 1) % C == 0 )
        {
            c = 1 - c;
        }

        document.getElementById("gameBoard").appendChild(miniBox);

        }

        document.getElementById("gameBoard").childNodes[0].style.backgroundImage="url(wRook.svg)";
        document.getElementById("gameBoard").childNodes[7].style.backgroundImage="url(wRook.svg)";
        document.getElementById("gameBoard").childNodes[1].style.backgroundImage="url(wKnight.svg)";
        document.getElementById("gameBoard").childNodes[6].style.backgroundImage="url(wKnight.svg)";
        document.getElementById("gameBoard").childNodes[2].style.backgroundImage="url(wBishop.svg)";
        document.getElementById("gameBoard").childNodes[5].style.backgroundImage="url(wBishop.svg)";
        document.getElementById("gameBoard").childNodes[3].style.backgroundImage="url(wKing.svg)";
        //document.getElementById("gameBoard").childNodes[5].style.backgroundImage="url(wBishop.svg)";
        document.getElementById("gameBoard").childNodes[4].style.backgroundImage="url(wQueen.svg)";

        for (var i = 8; i < 16; i++)
        {
        document.getElementById("gameBoard").childNodes[i].style.backgroundImage="url(wPawn.svg)";
        }

        document.getElementById("gameBoard").childNodes[63].style.backgroundImage="url(bRook.svg)";
        document.getElementById("gameBoard").childNodes[56].style.backgroundImage="url(bRook.svg)";
        document.getElementById("gameBoard").childNodes[62].style.backgroundImage="url(bKnight.svg)";
        document.getElementById("gameBoard").childNodes[57].style.backgroundImage="url(bKnight.svg)";
        document.getElementById("gameBoard").childNodes[61].style.backgroundImage="url(bBishop.svg)";
        document.getElementById("gameBoard").childNodes[58].style.backgroundImage="url(bBishop.svg)";
        document.getElementById("gameBoard").childNodes[59].style.backgroundImage="url(bKing.svg)";
        //document.getElementById("gameBoard").childNodes[59].style.backgroundImage="url(wBishop.svg)";
        document.getElementById("gameBoard").childNodes[60].style.backgroundImage="url(bQueen.svg)";

        for (var j = 55; j > 47; j--)
        {
        document.getElementById("gameBoard").childNodes[j].style.backgroundImage="url(bPawn.svg)";
        }
}

function turn(cell)
{
    for (i = 0; i < 64; i++)
    {
        document.getElementById("gameBoard").childNodes[i].style.borderColor="gray";
    }
    cell.style.borderColor="red";
    if (cell.style.backgroundImage != '')
    {
        oldBG=cell.style.backgroundImage;
        oldCell = cell;
    }
    else
    {
        cell.style.backgroundImage=oldBG;
        oldCell.style.backgroundImage='';
		oldCell=null;
		oldBG='';
    }
}
function cellHover(cell){
	//for(j=0; j<64)
}