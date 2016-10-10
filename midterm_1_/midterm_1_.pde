PImage img;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
String state="welcome";
int bgc=0;
int x;
//define the start of cars
int caronespeed=1000;
int carspeed=1200;
int cartwospeed=1500;
int carthreespeed=1500;
int carfourspeed=1600;
int carfivespeed=1900;
int carsixspeed=1500;
int carsevenspeed=1300;
int careightspeed=1700;
int carninespeed=1300;
float speed=0.1;
int a;
float bossspeed=1000;
//location of start point
float location=320;
float locationone=430;
float locationtwo=540;
float locationthree=620;
float locationfour=720;
float locationfive=120;
float locationsix=820;
float locationseven=940;
float locationeight=220;
float locationnine=20;
//counters
int count=0;
int countone=0;
int counttwo=0;


void setup(){
 size(1000,1000); 
 textAlign(CENTER);
 img=loadImage("car.png");
 img1=loadImage("man.png");
 img2=loadImage("Car1.png");
 img3=loadImage("man1.png");
 img4=loadImage("car2.png");
 img5=loadImage("start.jpg");
 img6=loadImage("intro.jpg");
 img7=loadImage("man2.png");
}


void draw(){
  background(bgc);
  textSize(30);
  fill(255);

  if (state=="welcome"){
  image(img5,0,0);
  }
  if (state=="gameone"){
    bgc=255;
    fill(0);
    image(img6,0,0);
  }
  
   if (state=="gameonestart"){
     bgc=#87CEFA;
       for(x=100;x<=1000;x=x+100){
    stroke(255);
    strokeWeight(3);
    line(0,x,1000,x);
  }
      image(img3,5,mouseY,80,80);
      image(img2,caronespeed=caronespeed-5,location,120,50);
      image(img4,carspeed=carspeed-3,locationone,120,50);
      image(img4,cartwospeed=cartwospeed-4,locationtwo,120,50);
      image(img2,carthreespeed=carthreespeed-3,locationthree,120,50);
      image(img4,carfourspeed=carfourspeed-4,locationfour,120,50);
      image(img2,carfivespeed=carfivespeed-5,locationfive,150,62);
      image(img2,carsixspeed=carsixspeed-4,locationsix,120,50);
      image(img4,carsevenspeed=carsevenspeed-3,locationseven,130,54);
      image(img4,careightspeed=careightspeed-3,locationeight,100,42);
      image(img2,carninespeed=carninespeed-4,locationnine,120,50);
      
      //if person hits the car, then go to end  
      if (mouseY>=location-50 && caronespeed<=50 && mouseY<=location+50 && caronespeed>=-80){
        endgame();
      }
      
      if (mouseY>=locationone-50 && mouseY<=locationone+50 && carspeed<=50 && carspeed>=-80){
        endgame();
      }
      
      if(mouseY>=locationtwo-50 && mouseY<=locationtwo+50 && cartwospeed<=50 && cartwospeed>=-80){
        endgame();
      }
      
      if(mouseY>=locationthree-50 && mouseY<=locationthree+50 && carthreespeed<=50 && carthreespeed>=-80){
        endgame();
      }
      
      if(mouseY>=locationfour-50 && mouseY<=locationfour+50 && carfourspeed<=50 && carfourspeed>=-80){
        endgame();
      }
      
      if(mouseY>=locationfive-50 && mouseY<=locationfive+50 && carfivespeed<=50 && carfivespeed>=-80){
        endgame();
      }
      if(mouseY>=locationsix-50 && mouseY<=locationsix+50 && carsixspeed<=50 && carsixspeed>=-80){
        endgame();
      }
      if(mouseY>=locationseven-50 && mouseY<=locationseven+50 && carsevenspeed<=50 && carsevenspeed>=-80){
        endgame();
      }
      if(mouseY>=locationeight-50 && mouseY<=locationeight+50 && careightspeed<=50 && careightspeed>=-80){
        endgame();
      }
      if(mouseY>=locationnine-50 && mouseY<=locationnine+50 && carninespeed<=50 && carninespeed>=-80){
        endgame();
      } 
      //car rotation
      if(caronespeed<-120){
        caronespeed=1000;
        location=random(300,340);
        count=count+1;
      }
      if(carspeed<-120){
        carspeed=1200;
        locationone=random(410,440);
        countone=countone+1;
      }
      if(cartwospeed<-120){
        cartwospeed=1500;
        locationtwo=random(510,540);
        counttwo=counttwo+1;
      }
      if(carthreespeed<-150){
        carthreespeed=1500;
        locationthree=random(610,645);
        
      }
      if(carfourspeed<-120){
        carfourspeed=1600;
        locationfour=random(710,740);
      }
      if(carfivespeed<-120){
        carfivespeed=1900;
        locationfive=random(110,130);
      }
      if(carsixspeed<-120){
        carsixspeed=1500;
        locationsix=random(810,835);
      }
      if(carsevenspeed<-120){
        carsevenspeed=1300;
        locationseven=random(915,940);
      }
      if(careightspeed<-120){
        careightspeed=1700;
        locationeight=random(210,240);
      }
      if(carninespeed<-120){
        carninespeed=1300;
        locationnine=random(10,40);
      }
      /*if (count>=6 && countone>=5 && counttwo>=5){
        state="gameoneboss";
      }
      
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
        } */
   
    }

    
  if (state=="gameoneboss"){
    image(img1,10,mouseY,80,80);
    for(int a=20;a<height;a=a+90){
      image(img,bossspeed=bossspeed-speed,a,120,120);
      if (keyPressed==true){
        speed=1;
      }
      }
     if (bossspeed<0){
        state="gameoneend";
        bossspeed=1000;
        speed=0.1;
        } 
      count=0;
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
}

void mousePressed(){
  if (state=="gameone"){
    state="gameonestart";
  } 
}

void endgame(){
  state="gameoneend";
  caronespeed=1000;
  carspeed=1200;
  cartwospeed=1500;
  carthreespeed=1500;
  carfourspeed=1600;
  carfivespeed=1900;
  carsixspeed=1500;
  carsevenspeed=1300;
  careightspeed=1700;
  carninespeed=1300;
  location=random(300,340);
  locationone=random(410,440);
  locationtwo=random(510,540);
  locationthree=random(610,645);
  locationfour=random(710,740);
  locationfive=random(110,130);
  locationsix=random(810,835);
  locationseven=random(915,940);
  locationeight=random(210,240);
  locationnine=random(10,40);
}