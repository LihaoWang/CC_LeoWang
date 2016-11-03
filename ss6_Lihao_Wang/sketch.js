var state="s1";
var p1=250;
var p2=300;
function preload(){
	img= loadImage("wp.jpg");
	img2=loadImage("ie.png");
	img3=loadImage("ie.gif");
	img4=loadImage("no.gif");
}
function setup() {
  createCanvas(800,600);
  background(255);
  stroke(0,102);
  image(img,0,0);
}

function draw() {
  if (state=="s1"){
  image(img,0,0);
  image(img2,0,0,80,80);
  }
  if (state=="s2"){
   image(img3,0,0,800,600);
  }
  //var weight=dist(mouseX,mouseY,pmouseX,pmouseY);
  //strokeWeight(weight);
  //line(mouseX,mouseY,pmouseX,pmouseY);
  if (state=="s3"){
   image(img3,0,0,800,600);
   for (i=0;i<500;i=i+50){
    image(img4,i+50,i-30);
   }
  }
}
function mousePressed(){
 if (mouseX<80 && mouseY<80){
  state="s2";
 }
 if (state=="s2"&&mouseX>780&&mouseX<800&&mouseY>0&&mouseY<20){
  state="s3";
 }
 if (state=="s2"&&mouseX>750&&mouseX<780&&mouseY>0&&mouseY<20){
  state="s1";
 }
 
}
function keyPressed(){
 if (state=="s3"){
  state="s1";
 }
}