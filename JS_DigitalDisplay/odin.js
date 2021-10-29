class nechto{
digilib=[[1,1,1,1,1,1,0,1,1,1,1,1,1],//0
[0,0,1,0,1,0,0,1,0,1,0,0,1],//1
[1,1,1,0,1,1,1,1,1,0,1,1,1],//2
[1,1,1,0,1,0,1,1,0,1,1,1,1],//3
[1,0,1,1,1,1,1,1,0,1,0,0,1],//4
[1,1,1,1,0,1,1,1,0,1,1,1,1],//5
[1,1,1,1,0,1,1,1,1,1,1,1,1],//6
[1,1,1,0,1,0,0,1,0,1,0,0,1],//7
[1,1,1,1,1,1,1,1,1,1,1,1,1],//8
[1,1,1,1,1,1,1,1,0,1,1,1,1]];//9
colorlib=['lightgray','lightblue'];
constructor(gde,N){
for(let j=0;j<N.toString().length;j++){
document.getElementById(gde).innerHTML+='<div style="display:inline-block;"><table border="0px"><tr height="20px"><td width="20px" id="p'+j+'s0"></td><td width="60px" id="p'+j+'s1"></td><td width="20px" id="p'+j+'s2"></td><td width="20px"></td></tr><tr height="60px"><td id="p'+j+'s3"></td><td></td><td id="p'+j+'s4"></td><td></td></tr><tr height="20px"><td id="p'+j+'s5"></td><td id="p'+j+'s6"></td><td id="p'+j+'s7"></td><td></td></tr><tr height="60px"><td id="p'+j+'s8"></td><td></td><td id="p'+j+'s9"></td><td></td></tr><tr height="20px"><td id="p'+j+'s10"></td><td id="p'+j+'s11"></td><td id="p'+j+'s12"></td><td id="p'+j+'s13"></td></tr></table></div>';
}}
setDigit(chto){
for(let c=0;c<chto.toString().length; c++){
for(let i=0;i<13;i++){
document.getElementById("p"+c+"s"+i).style.backgroundColor=this.colorlib[this.digilib[chto.toString().charAt(c)][i]];
}
}
}

}