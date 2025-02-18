player p1;
shadow s1;

PImage dead;
PImage retry;
boolean[] keys;
boolean movingup;
boolean movingdown;
boolean movingleft;
boolean movingright;
boolean gameover = false;
int p = 255;
int f = 255;
int score = 0;
int linespeed = 3;
int diffh = 1;
int diffh2 = 1;
int diffv = 1;
int diffv2 = 1;
lineh[] lineH = new lineh[15];
lineh2[] lineH2 = new lineh2[15];
linev[] lineV = new linev[15];
linev2[] lineV2 = new linev2[15];

coin[] coins = new coin[2];

void setup(){
  size(900,900);
 retry = loadImage("retry.png");
  dead = loadImage("deadfr.jpg");
   keys=new boolean[6];
        keys[0]=false;
        keys[1]=false;
      keys[2]=false;
      keys[3]=false;
      keys[4]=false;
      
        p1 = new player(height/2,width/2,50,60);
        s1 = new shadow(height/2 ,width/2 + p1.h - 7 , p1.w,12);
        
        for(int i = 0;i<lineH.length; i++){
         
      lineH[i] = new lineh( -200,0,70,height);  
        
          
        }
        for(int i2 =0;i2<lineH2.length; i2++){
          lineH2[i2] = new lineh2(300 * i2 + random(800) + width ,0,70,height);  
        }
        for(int v2 = 0;v2<lineV2.length; v2++){
          lineV2[v2] = new linev2(0,100 * v2  + random(800) + height,width,70);
        }
for(int v = 0;v<lineV.length;v++){
  lineV[v] = new linev(0,v * -random(4) -height,width,70);
}

for( int c = 0;c<coins.length;c++){
  coins[c] = new coin(random(width ),random(height ),50,50);
}
}

void draw(){
   background(#A9B1F0);


stroke(0);
  fill(255);



 
   
for( int c = 0;c<coins.length;c++){
  coins[c].create();
}

 
  for(int i = 0;i<diffh; i++){
    lineH[i].show();
 lineH[i].move(); 
 lineH[i].back();
  
  }
   for(int i2 = 0;i2<diffh2; i2++){
        lineH2[i2].show2();
  lineH2[i2].move2(); 
 lineH2[i2].back2();
   }
    for(int v2 = 0;v2<diffv2; v2++){
      lineV2[v2].showv2();
    lineV2[v2].movev2();
    lineV2[v2].backv2();
    }
  for(int v = 0;v<diffv;v++){
    lineV[v].showv();
    lineV[v].movev();
    lineV[v].backv();
  }
  
 
        //collision

        
        
        for(int i = 0;i<diffh; i++){
      if(s1.shadoww == p1.w + 3 && p1.w == 50 && lineH[i].linehx + lineH[i].linehw>=p1.x && lineH[i].linehx <= p1.x + p1.w){
        gameover = true;
      }
        }
       for(int i2 = 0;i2<diffh2; i2++){
      if(s1.shadoww == p1.w + 3 && p1.w == 50 && lineH2[i2].lineh2x + lineH2[i2].lineh2w>=p1.x && lineH2[i2].lineh2x <= p1.x + p1.w){
        gameover = true;
      }
}
 for(int v = 0;v<diffv;v++){
   if(s1.shadoww == p1.w + 3 && p1.w == 50 &&lineV[v].linevy<=p1.y + p1.h && lineV[v].linevy >= p1.y - p1.h){
     gameover = true;
   }
   for(int v2 = 0;v2<diffv2; v2++){
      if(s1.shadoww == p1.w + 3 && p1.w == 50 &&lineV2[v2].linev2y<=p1.y + p1.h && lineV2[v2].linev2y >= p1.y - p1.h){
     gameover = true;
   }
   }
   for( int c = 0;c<coins.length;c++){
        if(s1.shadoww == p1.w + 3 && p1.w == 50 && p1.x + p1.w>=coins[c].cx && p1.x <= coins[c].cx + coins[c].cw && p1.y + p1.h >= coins[c].cy  && p1.y <= coins[c].cy + coins[c].ch){
          coins[c].cx = random(width );
          coins[c].cy = random(height );
          score++;
        }
        }
 }
   

  
  s1.make();
  p1.display();
    
  p1.landed();
   p1.rise();
  p1.fall();
 p1.maxjump();


fill(0,p);
textSize(40);
  text("Score: " +   score,50,50);
  if(gameover == false){
   if ( keys[0] )
      {  
        movingright = true;
        p1.x = p1.x+6;
        s1.shadowx =  s1.shadowx+6;
       
      }else{ movingright =false;}
      if ( keys[1]) 
      {
movingleft = true;
       p1.x = p1.x-6;
       s1.shadowx =  s1.shadowx -6;
      
      }else{movingleft = false;}
      
      if(keys[2]){
        movingup = true;
        p1.y = p1.y -6;
         s1.shadowy =  s1.shadowy -6;
  
         
         

      }else{ 
        movingup=false;
           
      }
      if(keys[3]){
      movingdown = true;
        p1.y = p1.y+8;
         s1.shadowy= s1.shadowy+8;
      
   
      
      
      }else{ movingdown = false;
      
      }
      if((keys[4])&&(p1.rising == false && p1.falling == false)){
        p1.rising=true;  
            p1.maxjumpy = s1.shadowy + 50 - 7- p1.jumpheight;
      }
  }
      //walls
      if(p1.x<=0){
        p1.x = 0;
      }
      if(p1.x + p1.w >= width){
        p1.x = width - p1.w;
        s1.shadowx = p1.x - 5;
      }
    if(p1.y <= 0 && p1.rising == false && p1.falling == false){
      p1.y = 0;
      s1.shadowy = p1.y + p1.h - 7;
    }
    if(p1.y>=height-p1.h){
      p1.y = height-p1.h;
      s1.shadowy = p1.y + p1.h - 7;  
    }
    
      if( score >= 10 && score <12){
      linespeed= 4;
      diffh2 = 1;
      diffv2 = 1;
        text("LEVEL 2",400,100);
      }
    if(score >= 30 && score < 33){
      text("LEVEL 3",400,100);
 
     diffh = 1;
     diffv = 2;
    }
     for( int c = 0;c<coins.length;c++){
    if(coins[c].cx>= width - 50){
      coins[c].cx = width - 50;
    }
    if(coins[c].cy>= height - 50){
      coins[c].cy = height - 50;
    }
}
if(gameover == true){
  p = 0;
  f = 50;
  fill(255,120);
  rect(0,0,width,height);
  fill(0,255);
  textSize(100);
    text("Game Over",width/2 - 200 ,height/2 - 200);
   textSize(60);
   text("Score: "+score,width/2 - 100,height/2 -100);
   image(dead,0,0,200,200);
   image(retry,width/2 - 30,height/2 + 150,60,60);
 
}
textSize(20);
      fill(255,0,0);
    text("SPACE to jump, WASD to move",width/2-100,50);
    text("Avoid the lasers and collect the coins",width/2-100,90);
}

void keyPressed()
            //Controlls
    {
      if (key=='d'){
        keys[0]=true;
      }
      if (key=='a'){
        keys[1]=true; 
      }
      if (key=='w'){
        keys[2]=true;
      }
      if (key=='s'){
        keys[3]=true; 
      }
      if(key==' '){
        keys[4]=true;
      }
    
   
    
    }
    void keyReleased(){
   
        
         
      
    
    
      if (key=='d'){
         keys[0]=false;
      }
      if (key=='a'){
         keys[1]=false;
      }
      if (key=='w'){
         keys[2]=false;
      }
      if (key=='s'){
         keys[3]=false;
      }
      if(key==' '){
        keys[4]=false;
        
      }
     if(key==' '){
       keys[4] = false;
     }
    }
   void mousePressed(){
     if(gameover){
       if(mouseX >= width/2 - 30 && mouseX<=width/2 + 30 && mouseY>= height/2+150 && mouseY<= height/2+210 ){
          p = 255;
 f = 255;
diffh = 1;
diffv = 1;
diffh2= 1;
diffv2 = 1;
gameover = false;
       for(int i = 0;i<diffh; i++){
lineH[i].linehx = -height * random(2);
         }
         for(int i2 = 0;i2<diffh2;i2++){
lineH2[i2].lineh2x = -height * random(1);
         }
         for(int v = 0;v<diffv;v++){
lineV[v].linevy = -height * random(1);
         }
          for(int v2 = 0;v2<diffv2;v2++){
lineV2[v2].linev2y = - height * random(2);
     score = 0;

          }
        
    
    


       }
       }
   }
     
