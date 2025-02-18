class shadow{
  
  int shadowx;
  int shadowy;
  int shadoww;
  int shadowh;
  
  shadow(int startshadowx,int startshadowy,int startshadoww,int startshadowh){
    shadowx = startshadowx;
    shadowy = startshadowy;
    shadoww = startshadoww;
    shadowh = startshadowh;
  }
 void make(){
   fill(50);
   noStroke();
    rect(shadowx,shadowy,shadoww,shadowh);
  }
  
  
}
