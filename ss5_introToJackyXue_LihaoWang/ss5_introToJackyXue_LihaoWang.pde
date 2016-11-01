//title:an introduction to a Chinese singer -- JackyXue
//instruction: click the album photo to listen to the songs

PImage img;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
String state="welcome";
import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer player1;
AudioPlayer player2;
AudioPlayer player3;
void setup() {
  size(800, 800);
  background(255);
  img=loadImage("jackyxue.jpg");
  img1=loadImage("album.jpg");
  img2=loadImage("album1.jpg");
  img3=loadImage("album2.jpg");
  img4=loadImage("album3.jpg");
  minim=new Minim(this);
  player = minim.loadFile("chuxuezhe.mp3");
  player1 = minim.loadFile("gangganghao.mp3");
  player2 = minim.loadFile("choubaguai.mp3");
  player3 = minim.loadFile("chuanshuo.mp3");
}

void draw() {
  //welcome page
  if (state=="welcome") {
    image(img, 0, 0);
  }
  //listening page
  if (state=="main") {
    image(img1, 0, 0);
    image(img2, 400, 0);
    image(img3, 0, 400);
    image(img4, 400, 400);
  }
  //different songs STATES
  if (state=="chuxuezhe"){
      player.play();
      player1.pause();
      player2.pause();
      player3.pause();
  }
  if (state=="gangganghao"){
      player1.play();
      player.pause();
      player2.pause();
      player3.pause();
  }
  if (state=="choubaguai"){
      player2.play();
      player.pause();
      player1.pause();
      player3.pause();
  }
  if (state=="chuanshuo"){
      player3.play();
      player.pause();
      player1.pause();
      player2.pause();
  }
  
}
void mousePressed() {
  if (state=="chuxuezhe"||state=="gangganghao"||state=="main"||state=="chuanshuo"||state=="choubaguai") {
    if (mouseX>0&&mouseX<400&&mouseY>0&&mouseY<400) {
       state="chuxuezhe";
    }
    if (mouseX>0&&mouseX<400&&mouseY>400&&mouseY<800) {
       state="gangganghao";
    }
    if (mouseX>400&&mouseX<800&&mouseY>400&&mouseY<800) {
       state="choubaguai";
    }
    if (mouseX>400&&mouseX<800&&mouseY>0&&mouseY<400) {
       state="chuanshuo";
    } 
  }
}

void keyPressed(){
    if (state=="welcome") {
    state="main";
  }
}