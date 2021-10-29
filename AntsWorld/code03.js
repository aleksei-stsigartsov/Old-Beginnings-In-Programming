function lehaMove(){
ImLeha=23
for(i=0;i<Z.length;i++){
for(j=0;j<Z[0].length;j++){
if(Z[i][j]==ImLeha){
currentX=i;
currentY=j;
}
}
}

ways=Array();
Xmin=(currentX==0)?0:currentX-1;
Xmax=(currentX==Z.length-1)?currentX:currentX+1;
Ymin=(currentY==0)?0:currentY-1;
Ymax=(currentY==Z[0].length-1)?currentY:currentY+1
naaber=false;
for(i=Xmin; i<=Xmax; i++){
	for(j=Ymin; j<=Ymax; j++){
		if((Math.abs(currentX-i)+Math.abs(currentY-j))==1){
			oneWay=[i,j];
			if(Z[i][j]==0){ //проверка соседней клетки на пустоту
				ways.push(oneWay); //запись варианта возможного хода
			}
			if(Z[i][j]>0){naaber=true;naaberX = i; naaberY = j;}
		}
	}
}
if(naaber==false){
	theWay=ways[Math.floor(Math.random()*ways.length)];
	Z[theWay[0]][theWay[1]]=ImLeha;	
	Z[currentX][currentY]=0;
}	
else if(naaber = true){
        neighborValue = Z[naaberX][naaberY];
        console.log(neighborValue);
        knbOptions = ["S", "C", "P"]
        knbAttempt = knbOptions[Math.floor(Math.random() * 3)]
        knb[ImLeha][neighborValue] = knbAttempt;
        knbOpponent = knb[neighborValue][ImLeha]
        for(var i = 0; i <= 5000; i++){
            if(knbOpponent){
                if(knbOpponent === "S" || knbOpponent === "C" || knbOpponent === "P"){
                    if(knbOpponent == knbAttempt){
                        knbAttempt = knbOptions[Math.floor(Math.random() * 3)]
                        knb[ID][neighborValue] = knbAttempt;
                    }
                    else if(knbAttempt == "S" && knbOpponent == "C"){
                        knb[ID][neighborValue] = undefined;
                        break;
                    }
                    else if(knbAttempt == "C" && knbOpponent == "P"){
                        knb[ID][neighborValue] = undefined;
                        break;
                    }
                    else if(knbAttempt == "P" && knbOpponent == "S"){
                        knb[ID][neighborValue] = undefined;           
                        break;                                    
                    }
                    else{
                        Z[currentX][currentY] = 0;
                        clearInterval(moveInterval);
                        return;
                    }       
                }
            }
            if(i == 5000){
                console.log("no response received");
                naaber = false;
                theWay = ways[Math.floor(Math.random() * ways.length)];
                Z[theWay[0]][theWay[1]] = ImLeha;
                Z[currentX][currentY] = 0;
                break;
            }
        }
        
    }
}
function Leha() {
    ImLeha= 23;
    do {
        Xborn = Math.round(Math.random() * Z.length);
        Yborn = Math.round(Math.random() * Z[0].length);
    }
    while (Z[Xborn][Yborn] != 0); 

    Z[Xborn][Yborn] = ImLeha;
	setInterval(lehaMove,1000);
    //lehaMove();
}
Leha();