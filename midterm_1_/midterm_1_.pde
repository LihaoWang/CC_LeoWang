PImage img;
String state="welcome";
int gamestate=0;
int bgc=0;
float carsize;
float b=1000;
float speed=0.1;
int a;

void setup(){
 size(1000,1000); 
 textAlign(CENTER);
 img=loadImage("car.png");
}


void draw(){
  background(bgc);
  textSize(30);
  fill(255);
  if (state=="welcome"){
  text("Please choose your a game",width/2,height/2);
  }
  if (state=="gameone"){
    bgc=255;
    fill(0);
    text("introduce the rules",width/2,height/2);
  }
  else if (state=="gametwo"){
     bgc=255;
    fill(0);
    text("introduce the rules2",width/2,height/2);  
  } 
    else if (state=="gamethree"){
     bgc=255;
    fill(0);
    text("introduce the rules3",width/2,height/2);  
  } 
  
   if (state=="gameonestart"){
     fill(0);
      text("game start",width/2,height/2);
      for(int a=20;a<height;a=a+90){
      image(img,b=b-speed,a,120,120);
      if (keyPressed==true){
        speed=1;
      }
      }
     if (b<0){
        state="gameoneend";
        b=1000;
        speed=0.1;
        }
   
    }
    else if (state=="gametwostart"){
      fill(0);
      text("game2 start",width/2,height/2);
      
    }
      else if (state=="gamethreestart"){
      fill(0);
      text("game3 start",width/2,height/2);
      
    }
if (state=="gameoneend"){
    bgc=0;
    fill(255);
     text("game1 end",width/2,height/2);
}
 
}



void keyPressed(){
  if(key=='1'){
    state="gameone";
  }
  else if (key=='2'){
    state="gametwo";
  }
  else if (key=='3'){
    state="gamethree";
  }
}

void mousePressed(){
  if (state=="gameone"){
    state="gameonestart";
  }
 else if (state=="gametwo"){
    state="gametwostart";
    
  }
 else if (state=="gamethree"){
    state="gamethreestart";
    
  }
  
  
}