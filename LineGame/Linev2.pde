class linev2{
  
  float linev2x;
  float linev2y;
  int linev2w;
  int linev2h;
  
  linev2( float startlinev2x, float startlinev2y, int startlinev2w, int startlinev2h){
      linev2x = startlinev2x;
      linev2y = startlinev2y;
      linev2w = startlinev2w;
      linev2h = startlinev2h;
}

void showv2(){
  stroke(0);
  fill(#E8A1FC);
  rect(linev2x,linev2y,linev2w,linev2h);
  noStroke();
  fill(#F2BFDF,100);
   rect(linev2x  , linev2y - 15 , linev2w, linev2h + 30);
  fill(#EDB5FC);
  rect(linev2x,linev2y + 5,linev2w,linev2h - 10);
   fill(#F1C9FC);
  rect(linev2x, linev2y + 15,linev2w,linev2h - 30);
  fill(#FBEDFF);
  rect(linev2x,linev2y + linev2h/2 - 4,linev2w,8);
  
}
void movev2(){
  if(gameover == false){
  linev2y = linev2y -linespeed;
  }
}
void backv2(){
  if(linev2y < 0 - 400){
    linev2y = linev2y * -(random(5)) + width;
  
}
}
}
