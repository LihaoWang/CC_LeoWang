PImage img;
PImage img1;
String state="welcome";
int bgc=0;
//define the location of cars
float caronespeed=1000;
int carspeed=1200;
int cartwospeed=1300;
float speed=0.1;
int a;
float location=200;
float locationone=500;
float locationtwo=700;


void setup(){
 size(1000,1000); 
 textAlign(CENTER);
 img=loadImage("car.png");
 img1=loadImage("man.png");
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
      image(img1,10,mouseY,80,80);
      image(img,caronespeed=caronespeed-5,location,120,120);
      image(img,carspeed=carspeed-3,locationone,120,120);
      image(img,cartwospeed=cartwospeed-4,locationtwo,100,100);
      //if person hits the car, then go to end
      if (mouseY>=location-50 && caronespeed<=50 && mouseY<=location+50){
        state="gameoneend";
        caronespeed=1000;
        carspeed=1200;
        cartwospeed=1300;
        location=random(50,300);
        locationone=random(300,700);
        locationtwo=random(700,950);
      }
      if (mouseY>=locationone-50 && mouseY<=locationone+50 && carspeed<=50){
        state="gameoneend";
        carspeed=1200;
        caronespeed=1000;
        cartwospeed=1300; 
        location=random(50,300);
        locationone=random(300,700);
        locationtwo=random(700,950);
      }
      if(mouseY>=locationtwo-50 && mouseY<=locationtwo+50 && cartwospeed<=50){
        state="gameoneend";
        carspeed=1200;
        caronespeed=1000;
        cartwospeed=1300;
        location=random(50,300);
        locationone=random(300,700);
        locationtwo=random(700,950);
      }
      //car rotation
      if(caronespeed<-150){
        caronespeed=1000;
        location=random(50,300);
      }
      if(carspeed<-150){
        carspeed=1200;
        locationone=random(300,700);
      }
      if(cartwospeed<-150){
        cartwospeed=1200;
        locationtwo=random(700,950);
      }
      
      /*for(int a=20;a<height;a=a+90){
      image(img,b=b-speed,a,120,120);
      if (keyPressed==true){
        speed=1;
      }
      }
     if (b<0){
        state="gameoneend";
        b=1000;
        speed=0.1;
        } */
   
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