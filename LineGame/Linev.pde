class linev{
  
  float linevx;
  float linevy;
  int linevw;
  int linevh;
  
  linev( float startlinevx, float startlinevy, int startlinevw, int startlinevh){
      linevx = startlinevx;
      linevy = startlinevy;
      linevw = startlinevw;
      linevh = startlinevh;
}

void showv(){
  stroke(0);
  fill(#E8A1FC);
  rect(linevx,linevy,linevw,linevh);
  noStroke();
  fill(#F2BFDF,100);
   rect(linevx  , linevy - 15 , linevw, linevh + 30);
  fill(#EDB5FC);
  rect(linevx,linevy + 5,linevw,linevh - 10);
   fill(#F1C9FC);
  rect(linevx, linevy + 15,linevw,linevh - 30);
  fill(#FBEDFF);
  rect(linevx,linevy + linevh/2 - 4,linevw,8);
  
}
void movev(){
  if(gameover == false){
  linevy = linevy +linespeed;
  }
}
void backv(){
  if(linevy > height + 10){
    linevy = linevy * -(random(2)) - width;
  
}
}
}
