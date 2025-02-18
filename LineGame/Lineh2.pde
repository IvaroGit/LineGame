class lineh2{
  
  float lineh2x;
  int lineh2y;
  int lineh2w;
  int lineh2h;
  
  lineh2( float startlineh2x, int startlineh2y, int startlineh2w, int startlineh2h){
      lineh2x = startlineh2x;
      lineh2y = startlineh2y;
      lineh2w = startlineh2w;
      lineh2h = startlineh2h;
}

void show2(){
 
  
  stroke(0);
  strokeWeight(1);
  fill(#E8A1FC);
  rect(lineh2x,lineh2y,lineh2w,lineh2h);
   noStroke();
   fill(#F2BFDF,100);
   rect(lineh2x - 15 , lineh2y , lineh2w + 30, lineh2h);
fill(#EDB5FC);
   rect(lineh2x + 5,lineh2y, lineh2w - 10,lineh2h);
   fill(#F1C9FC);
   rect(lineh2x + 15,lineh2y,lineh2w - 30,lineh2h);
     fill(#FBEDFF);
  rect(lineh2x + lineh2w/2 - 4,lineh2y,8,lineh2h);
}
void move2(){
  if(gameover == false){
  lineh2x = lineh2x -linespeed;
  }
}
void back2(){
  if(lineh2x < 0 - 200){
    lineh2x = lineh2x * -random(4,10) + width ;
  
}
}
}
