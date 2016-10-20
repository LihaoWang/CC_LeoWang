PImage img;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
String state="welcome";
int bgc=0;
int x;
int n;
//define the start point of cars
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
int a;
int itimer;
int gtimer;
int displaytimer;
int endtimer;
//location of cars
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


void setup(){
 size(1000,1000); 
<<<<<<< HEAD
 textAlign(CENTER);
 //load images
=======
>>>>>>> parent of c5b064b... change
 img=loadImage("car4.png");
 img1=loadImage("intro1.jpg");
 img2=loadImage("Car1.png");
 img3=loadImage("man1.png");
 img4=loadImage("car2.png");
 img5=loadImage("start.jpg");
 img6=loadImage("intro.jpg");
 img7=loadImage("man2.png");
 img8=loadImage("gameover.jpg");
}

void draw(){
  background(bgc);
  textSize(30);
  fill(255);

  if (state=="welcome"){
  image(img5,0,0);
  }
  if (state=="gameone"){
    image(img6,0,0);
  }
  else if (state=="gametwo"){
   image(img1,0,0); 
  }
  
   if (state=="gameonestart"){
     bgc=#87CEFA;
       for(x=100;x<=1000;x=x+100){
    stroke(255);
    strokeWeight(3);
    line(0,x,1000,x);
  }
      image(img3,5,mouseY,80,80);
      image(img2,caronespeed=caronespeed-3,location,120,50);
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
      touch();
      //car rotation
      rotation();  
    }
    else if (state=="gametwostart"){
      bgc=#FFFFFF;
       for(x=100;x<=1000;x=x+100){
    stroke(0);
    strokeWeight(3);
    line(0,x,1000,x);
  }
      image(img7,5,mouseY,80,80);
      image(img,caronespeed=caronespeed-5,location,120,50);
      image(img,carspeed=carspeed-3,locationone,120,50);
      image(img,cartwospeed=cartwospeed-4,locationtwo,120,50);
      image(img,carthreespeed=carthreespeed-3,locationthree,120,50);
      image(img,carfourspeed=carfourspeed-4,locationfour,120,50);
      image(img,carfivespeed=carfivespeed-5,locationfive,150,62);
      image(img,carsixspeed=carsixspeed-4,locationsix,120,50);
      image(img,carsevenspeed=carsevenspeed-3,locationseven,130,54);
      image(img,careightspeed=careightspeed-3,locationeight,100,42);
      image(img,carninespeed=carninespeed-4,locationnine,120,50);
      //car rotation
      rotation();
      //if person hits the car, then go to end  
      touch();
      
    }
    
if (state=="gameoneend"){
<<<<<<< HEAD
    endtimer=millis();
    textSize(50);
    fill(0);
    bgc=255;
    //print("you survive"+displaytimer);
    text("You survived for "+displaytimer+" seconds",500,500);
    println(gtimer/1000);
    if ((endtimer/1000)-(gtimer/1000)>5){    
    image(img8,0,0);//end page & select the character
    }
=======
    image(img8,0,0);
>>>>>>> parent of c5b064b... change
}
}


void keyPressed(){
  if(key=='1'){
<<<<<<< HEAD
    state="gameone"; //if press 1, go to game one introduction
}
=======
    state="gameone";
  }
>>>>>>> parent of c5b064b... change
  else if(key=='2'){
    state="gametwo";
  }
}

void mousePressed(){
  if (state=="gameone"){
    state="gameonestart";
    itimer=millis();
    println("time before start "+(itimer/1000));
  } 
  else if (state=="gametwo"){
    state="gametwostart";
    itimer=millis();
    println("time before start "+(itimer/1000));
  }
}

void endgame(){
  state="gameoneend";
  gtimer=millis();
  displaytimer=(gtimer-itimer)/1000;
  println(displaytimer);
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

void touch(){
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
  
}

void rotation(){
      //car rotation
      if(caronespeed<-120){
        caronespeed=1000;
        location=random(300,340);
      }
      if(carspeed<-120){
        carspeed=1200;
        locationone=random(410,440);
      }
      if(cartwospeed<-120){
        cartwospeed=1500;
        locationtwo=random(510,540);
      }
      if(carthreespeed<-120){
        carthreespeed=1500;
        locationthree=random(610,645);        
      }
      if(carfourspeed<-120){
        carfourspeed=1600;
        locationfour=random(710,740);
      }
      if(carfivespeed<-150){
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
  
}