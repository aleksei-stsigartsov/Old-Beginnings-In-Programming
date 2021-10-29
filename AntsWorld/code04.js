async function LehaMove(){
    ImLeha = 23
    for(i = 0; i < Z.length; i++){
        for(j = 0; j < Z[0].length; j++){
            if(Z[i][j] == ImLeha){
            var currentX = i;
            var currentY = j;
            }
        }
    }
    ways = Array();
    Xmin = (currentX == 0) ? 0 : currentX - 1;
    Xmax = (currentX == Z.length - 1) ? currentX : currentX + 1;

    Ymin=(currentY == 0) ? 0 : currentY - 1;
    Ymax=(currentY == Z[0].length - 1) ? currentY : currentY + 1;

    neighbor = false;

    for(i = Xmin; i <= Xmax; i++){
        for(j = Ymin; j <= Ymax; j++){
            if((Math.abs(currentX - i) + Math.abs(currentY - j)) == 1){
                oneWay = [i, j];
                if(Z[i][j] == 0) ways.push(oneWay);
                if(Z[i][j] > 0) {
                    neighbor = true;
                    neighborValue = Z[i][j];
                }
            }
        }
    }

    if(neighbor == false) {
        theWay = ways[Math.floor(Math.random() * ways.length)];
        Z[theWay[0]][theWay[1]] = ImLeha;
        Z[currentX][currentY] = 0;
        knb[ImLeha][neighborValue] = 0;
    }

    else if(neighbor = true){

        if(neighborValue + drawOffset != neighborValue){
            knbOptions = ["S", "C", "P"]
            knbAttempt = knbOptions[Math.floor(Math.random() * 3)]
            knb[ImLeha][neighborValue] = knbAttempt;
            drawOffset = 0
        }


            if(attemptCounter < 5){
                if(knb[neighborValue][ImLeha] === "S" || knb[neighborValue][ImLeha] === "C" || knb[neighborValue][ImLeha] === "P"){
                    if(knb[neighborValue][ImLeha] == knbAttempt){
                        drawOffset = 100
                    }

                    else if(knbAttempt == "S" && knb[neighborValue][ImLeha] == "C"){

                        knb[ImLeha][neighborValue] = 0;
                        attemptCounter = 0
                    }
                    else if(knbAttempt == "C" && knb[neighborValue][ImLeha] == "P"){
                        knb[ImLeha][neighborValue] = 0;
                        attemptCounter = 0
                    }
                    else if(knbAttempt == "P" && knb[neighborValue][ImLeha] == "S"){
                        knb[ImLeha][neighborValue] = 0;
                        attemptCounter = 0
                    }

                    else{
                        knb[ImLeha][neighborValue] = 0;
                        Z[currentX][currentY] = 0;
                        clearInterval(moveInterval);

                        return;
                    }

                }
                attemptCounter++;
            }
            else{
                attemptCounter = 0
                theWay = ways[Math.floor(Math.random() * ways.length)];
                Z[theWay[0]][theWay[1]] = ImLeha;
                Z[currentX][currentY] = 0;
                knb[ImLeha][neighborValue] = 0;
            }
    }
}

function Leha(){
    ImLeha = 23;
    do {
        var Yborn = Math.floor(Math.random() * Z.length);
        var Xborn = Math.floor(Math.random() * Z[0].length);

    } while (Z[Yborn][Xborn] != 0);

    Z[Xborn][Yborn] = ImLeha;
    attemptCounter = 0
    drawOffset = 100;
    neighborValue = 30;
    moveInterval = setInterval(LehaMove, 500);
}

Leha();
