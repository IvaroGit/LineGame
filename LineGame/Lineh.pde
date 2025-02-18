class lineh{
  
  float linehx;
  int linehy;
  int linehw;
  int linehh;
  
  lineh( float startlinehx, int startlinehy, int startlinehw, int startlinehh){
      linehx = startlinehx;
      linehy = startlinehy;
      linehw = startlinehw;
      linehh = startlinehh;
}

void show(){
 
  
  stroke(0);
  strokeWeight(1);
  fill(#E8A1FC);
  rect(linehx,linehy,linehw,linehh);
   noStroke();
   fill(#F2BFDF,100);
   rect(linehx - 15 , linehy , linehw + 30, linehh);
   
fill(#EDB5FC,255);
   rect(linehx + 5,linehy, linehw - 10,linehh);
   fill(#F1C9FC,255);
   rect(linehx + 15,linehy,linehw - 30,linehh);
     fill(#FBEDFF,255);
  rect(linehx + linehw/2 - 4,linehy,8,linehh);
}
void move(){
  if(gameover == false){
  linehx = linehx +linespeed;
  }
}
void back(){
  if(linehx > width + linehw){
    linehx = linehx * -random(2)  - width ;
  
}
}
}
