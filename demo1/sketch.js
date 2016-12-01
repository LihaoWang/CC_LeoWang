function preload() {
 startimg = loadImage('start.jpg');
 door = loadImage("door.jpg");
 myFont = loadFont("Necropsia.ttf");
 myFont1 = loadFont("RW-creepsville.ttf");
}

function setup() {
 createCanvas(1000, 700);
 textAlign(CENTER);
 scene = 1
}

function draw() {
 if (scene == 1) {
  image(startimg, 0, 0);
  textFont(myFont);
  textSize(60);
  fill(255);
  text("ESCAPE THE ROOM", width / 2, height / 2);
  text("Start", width / 2 - 6, height / 2 + 180);
  if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 + 140 && mouseY < height / 2 + 200) {
   fill(179, 45, 0);
   textSize(60);
   text("Start", width / 2 - 6, height / 2 + 180);

  }
 }
 else if (scene == 2) {
  image(door, 0, 0);
  textFont(myFont1);
  textSize(40);
  fill(255);
  text("There is a locked door in front of me, what shouold I do?", width / 2, height / 2 - 30);
  text("Hit head on the door", width / 2, height / 2 + 80);
  text("look for the key", width / 2, height / 2 + 160);
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) {
   fill(179, 45, 0);
   text("Hit head on the door", width / 2, height / 2 + 80);
  }
  if (mouseX > width / 2 - 130 && mouseX < width / 2 + 130 && mouseY > height / 2 + 130 && mouseY < height / 2 + 170) {
   fill(179, 45, 0);
   text("look for the key", width / 2, height / 2 + 160);
  }
 }
 else if(scene==3){
  text("door open",width/2,height/2);
  
 }
 else if (scene==4){
  text("look for the key",width/2,height/2)
  
 }
}

function mousePressed() {
 if (scene == 1) {
  if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 + 140 && mouseY < height / 2 + 200) {
   scene = 2;
   console.log(scene);
  }

 }
 else if (scene==2){
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) {
   scene=3;
  }
  if (mouseX > width / 2 - 130 && mouseX < width / 2 + 130 && mouseY > height / 2 + 130 && mouseY < height / 2 + 170) {
   scene=4;
  }
 }


}