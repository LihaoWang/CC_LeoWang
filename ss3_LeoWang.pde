//LeoWang
//title:ball game

int d=40;
float a=200;
float b=0;
int c=#FF5722;
int c1=#FB9473;
int e=120;
float r=100;
int x;

void setup(){
  size(800,800); 
}

void draw(){
  background(c);
  noStroke();
  fill(255);
   for (x=780;x<20;x=x-30){
  noFill();
  stroke(0);
   ellipse(400,400,x,x);
   }
  ellipse(a,b,r,r);
  b=b+10;
  if (b>800+r/2){
    b=0;
    a=random(100,700);
  }
  rectMode(CENTER);
  noStroke();
  fill(c1);
 rect(mouseX,780,e,d);
 if (mouseX>width/2){
   e=190;
   d=300;
 } else {
   e=120;
   d=40;
 }  
 fill(0);
 textSize(20);
 text("click the mouse: change background color, rect color and ball size", 10,30);
 text("press a key: change background color, rect color and ball size", 10,60);
 
}



void keyPressed(){
  c=#FFAD55;
  c1=#FF5722;
  r=random(20,200);
}

void mousePressed(){
  c=#7AC100;
  c1=#C0E582;
  r=random(20,200);
}