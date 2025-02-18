class coin{
  float cx;
  float cy;
  int cw;
  int ch;
  
  coin(float startcx, float startcy, int startcw, int startch){
    
    cx = startcx;
    cy = startcy;
    cw = startcw;
    ch = startch;
  }
  void create(){
    stroke(0);
    fill(#CBB221);
    rect(cx,cy,cw,ch);
  }
}
