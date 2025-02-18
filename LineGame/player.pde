
class player{
  
  int x;
  int y;
  int w;
  int h;
  int airtime = 0;
  
  boolean rising;
  boolean falling;
  
  int jumpheight;  
  int maxjumpy;
  int fallspeed;
  int jumpspeed;
  
  player(int startx,int starty,int startw,int starth){
    
 x = startx;
 y = starty;
 w = startw;
 h = starth;
 
   jumpheight = 200;
   
    
    jumpspeed = 12;
    fallspeed = 12;
    
    rising = false;
    falling = false;
  }
  
  void display(){
    fill(f);
    noStroke();
    rect(x,y,w,h);
    if(s1.shadowx >= p1.x + p1.w/2){
      s1.shadowx = p1.x + p1.w/2;
      s1.shadoww = 1;
    }
  }
      void rise(){
      if(rising == true){
      h = 60;
        y = y - jumpspeed;
s1.shadoww = s1.shadoww-2;
s1.shadowx = s1.shadowx +1;

w = 30;

      }
     
       
    }
    void fall(){
      if(falling == true ){
        
        h = 45;
        w = 50;
     s1.shadoww = s1.shadoww + 2;
s1.shadowx = s1.shadowx -1;
  
        y = y +fallspeed;
        if(s1.shadoww > p1.w + 15){
            s1.shadoww = p1.w + 15;
         
        }
        if( s1.shadowx < p1.x -7){
          s1.shadowx = p1.x -7;
        }
         
  
    }
}


   void maxjump(){
   if(p1.y <= s1.shadowy - p1.jumpheight){
    p1.rising = false;
    p1.falling = true;  
      
       }
     }

     
      
     
   
   
   void landed(){
     airtime = 0;
     h = 60;
     if(y >= s1.shadowy - h +5 ){
     falling = false;
     
     y = s1.shadowy - h + 7;
      s1.shadoww = p1.w + 3;
          s1.shadowx = p1.x - 5 ;
   
     }
   }
}
