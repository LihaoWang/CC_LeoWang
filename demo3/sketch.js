x1 = 100;
y1 = 100;
x2 = 100;
y2 = 250;
x3 = 100;
y3 = 400;
x4 = 100;
y4 = 550;
x5 = 650;
y5 = 100;
x6 = 650;
y6 = 250;
x7 = 650;
y7 = 400;
x8 = 650;
y8 = 550;
x9 = 650;
y9 = 700;

function preload() {
 img = loadImage('1.jpg');
 a = loadImage('a.JPG');
 b = loadImage('b.JPG');
 c = loadImage('c.JPG');
 d = loadImage('d.JPG');
 e = loadImage('e.JPG');
 f = loadImage('f.JPG');
 g = loadImage('g.JPG');
 h = loadImage('h.JPG');
 i = loadImage('i.JPG');
}

function setup() {
 createCanvas(800, 800);
 imageMode(CENTER);
 textAlign(CENTER);
}

function draw() {
 background(255);
 image(a, x1, y1, 100, 100);
 image(b, x2, y2, 100, 100);
 image(c, x3, y3, 100, 100);
 image(d, x4, y4, 100, 100);
 image(e, x5, y5, 100, 100);
 image(f, x6, y6, 100, 100);
 image(g, x7, y7, 100, 100);
 image(h, x8, y8, 100, 100);
 image(i, x9, y9, 100, 100);
 line(250, 350, 550, 350);
 line(250, 450, 550, 450);
 line(350, 250, 350, 550);
 line(450, 250, 450, 550);
 if(x1==300&&y1==300&&x2==400&&y2==300&&x3==500&&y3==300&&x4==300&&y4==400&&x5==400&&y5==400&&x6==500&&y6==400&&x7==300&&y7==500&&x8==400&&y8==500&&x9==500&&y9==500){
  textSize(50);
  text('done',width/2,650);
 }
}

// function mouseReleased() {
//   x=mouseX;
//   y=mouseY;
// }
function mousePressed() {
 if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 150) {
  curr = 1;
 } else if (mouseX > 50 && mouseX < 150 && mouseY > 200 && mouseY < 300) {
  curr = 2;
 } else if (mouseX > 50 && mouseX < 150 && mouseY > 350 && mouseY < 450) {
  curr = 3;
 } else if (mouseX > 50 && mouseX < 150 && mouseY > 500 && mouseY < 600) {
  curr = 4;
 } else if (mouseX > 600 && mouseX < 700 && mouseY > 50 && mouseY < 150) {
  curr = 5;
 } else if (mouseX > 600 && mouseX < 700 && mouseY > 200 && mouseY < 300) {
  curr = 6;
 } else if (mouseX > 600 && mouseX < 700 && mouseY > 350 && mouseY < 450) {
  curr = 7;
 } else if (mouseX > 600 && mouseX < 700 && mouseY > 500 && mouseY < 600) {
  curr = 8;
 } else if (mouseX > 600 && mouseX < 700 && mouseY > 650 && mouseY < 750) {
  curr = 9;
 }
 if (curr == 1 && mouseX > 350 && mouseX < 450 && mouseY > 250 && mouseY < 350) {
  x1 = 400;
  y1 = 300;
 } else if (curr == 1 && mouseX > 450 && mouseX < 550 && mouseY > 250 && mouseY < 350) {
  x1 = 500;
  y1 = 300;
 } else if (curr == 1 && mouseX > 250 && mouseX < 350 && mouseY > 250 && mouseY < 350) {
  x1 = 300;
  y1 = 300;
 } else if (curr == 1 && mouseX > 250 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
  x1 = 300;
  y1 = 400;
 } else if (curr == 1 && mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
  x1 = 400;
  y1 = 400;
 } else if (curr == 1 && mouseX > 450 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
  x1 = 500;
  y1 = 400;
 } else if (curr == 1 && mouseX > 250 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
  x1 = 300;
  y1 = 500;
 } else if (curr == 1 && mouseX > 350 && mouseX < 450 && mouseY > 450 && mouseY < 550) {
  x1 = 400;
  y1 = 500;
 } else if (curr == 1 && mouseX > 450 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
  x1 = 500;
  y1 = 500;
 }
 //current=2
 if (curr == 2 && mouseX > 350 && mouseX < 450 && mouseY > 250 && mouseY < 350) {
  x2 = 400;
  y2 = 300;
 } else if (curr == 2 && mouseX > 450 && mouseX < 550 && mouseY > 250 && mouseY < 350) {
  x2 = 500;
  y2 = 300;
 } else if (curr == 2 && mouseX > 250 && mouseX < 350 && mouseY > 250 && mouseY < 350) {
  x2 = 300;
  y2 = 300;
 } else if (curr == 2 && mouseX > 250 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
  x2 = 300;
  y2 = 400;
 } else if (curr == 2 && mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
  x2 = 400;
  y2 = 400;
 } else if (curr == 2 && mouseX > 450 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
  x2 = 500;
  y2 = 400;
 } else if (curr == 2 && mouseX > 250 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
  x2 = 300;
  y2 = 500;
 } else if (curr == 2 && mouseX > 350 && mouseX < 450 && mouseY > 450 && mouseY < 550) {
  x2 = 400;
  y2 = 500;
 } else if (curr == 2 && mouseX > 450 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
  x2 = 500;
  y2 = 500;
 }
 //current=3
 if (curr == 3 && mouseX > 350 && mouseX < 450 && mouseY > 250 && mouseY < 350) {
  x3 = 400;
  y3 = 300;
 } else if (curr == 3 && mouseX > 450 && mouseX < 550 && mouseY > 250 && mouseY < 350) {
  x3 = 500;
  y3 = 300;
 } else if (curr == 3 && mouseX > 250 && mouseX < 350 && mouseY > 250 && mouseY < 350) {
  x3 = 300;
  y3 = 300;
 } else if (curr == 3 && mouseX > 250 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
  x3 = 300;
  y3 = 400;
 } else if (curr == 3 && mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
  x3 = 400;
  y3 = 400;
 } else if (curr == 3 && mouseX > 450 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
  x3 = 500;
  y3 = 400;
 } else if (curr == 3 && mouseX > 250 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
  x3 = 300;
  y3 = 500;
 } else if (curr == 3 && mouseX > 350 && mouseX < 450 && mouseY > 450 && mouseY < 550) {
  x3 = 400;
  y3 = 500;
 } else if (curr == 3 && mouseX > 450 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
  x3 = 500;
  y3 = 500;
 }
 //current=4
 if (curr == 4 && mouseX > 350 && mouseX < 450 && mouseY > 250 && mouseY < 350) {
  x4 = 400;
  y4 = 300;
 } else if (curr == 4 && mouseX > 450 && mouseX < 550 && mouseY > 250 && mouseY < 350) {
  x4 = 500;
  y4 = 300;
 } else if (curr == 4 && mouseX > 250 && mouseX < 350 && mouseY > 250 && mouseY < 350) {
  x4 = 300;
  y4 = 300;
 } else if (curr == 4 && mouseX > 250 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
  x4 = 300;
  y4 = 400;
 } else if (curr == 4 && mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
  x4 = 400;
  y4 = 400;
 } else if (curr == 4 && mouseX > 450 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
  x4 = 500;
  y4 = 400;
 } else if (curr == 4 && mouseX > 250 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
  x4 = 300;
  y4 = 500;
 } else if (curr == 4 && mouseX > 350 && mouseX < 450 && mouseY > 450 && mouseY < 550) {
  x4 = 400;
  y4 = 500;
 } else if (curr == 4 && mouseX > 450 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
  x4 = 500;
  y4 = 500;
 }
 //current=5
 if (curr == 5 && mouseX > 350 && mouseX < 450 && mouseY > 250 && mouseY < 350) {
  x5 = 400;
  y5 = 300;
 } else if (curr == 5 && mouseX > 450 && mouseX < 550 && mouseY > 250 && mouseY < 350) {
  x5 = 500;
  y5 = 300;
 } else if (curr == 5 && mouseX > 250 && mouseX < 350 && mouseY > 250 && mouseY < 350) {
  x5 = 300;
  y5 = 300;
 } else if (curr == 5 && mouseX > 250 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
  x5 = 300;
  y5 = 400;
 } else if (curr == 5 && mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
  x5 = 400;
  y5 = 400;
 } else if (curr == 5 && mouseX > 450 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
  x5 = 500;
  y5 = 400;
 } else if (curr == 5 && mouseX > 250 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
  x5 = 300;
  y5 = 500;
 } else if (curr == 5 && mouseX > 350 && mouseX < 450 && mouseY > 450 && mouseY < 550) {
  x5 = 400;
  y5 = 500;
 } else if (curr == 5 && mouseX > 450 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
  x5 = 500;
  y5 = 500;
 }
 //current=6
 if (curr == 6 && mouseX > 350 && mouseX < 450 && mouseY > 250 && mouseY < 350) {
  x6 = 400;
  y6 = 300;
 } else if (curr == 6 && mouseX > 450 && mouseX < 550 && mouseY > 250 && mouseY < 350) {
  x6 = 500;
  y6 = 300;
 } else if (curr == 6 && mouseX > 250 && mouseX < 350 && mouseY > 250 && mouseY < 350) {
  x6 = 300;
  y6 = 300;
 } else if (curr == 6 && mouseX > 250 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
  x6 = 300;
  y6 = 400;
 } else if (curr == 6 && mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
  x6 = 400;
  y6 = 400;
 } else if (curr == 6 && mouseX > 450 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
  x6 = 500;
  y6 = 400;
 } else if (curr == 6 && mouseX > 250 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
  x6 = 300;
  y6 = 500;
 } else if (curr == 6 && mouseX > 350 && mouseX < 450 && mouseY > 450 && mouseY < 550) {
  x6 = 400;
  y6 = 500;
 } else if (curr == 6 && mouseX > 450 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
  x6 = 500;
  y6 = 500;
 }
 //current=7
 if (curr == 7 && mouseX > 350 && mouseX < 450 && mouseY > 250 && mouseY < 350) {
  x7 = 400;
  y7 = 300;
 } else if (curr == 7 && mouseX > 450 && mouseX < 550 && mouseY > 250 && mouseY < 350) {
  x7 = 500;
  y7 = 300;
 } else if (curr == 7 && mouseX > 250 && mouseX < 350 && mouseY > 250 && mouseY < 350) {
  x7 = 300;
  y7 = 300;
 } else if (curr == 7 && mouseX > 250 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
  x7 = 300;
  y7 = 400;
 } else if (curr == 7 && mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
  x7 = 400;
  y7 = 400;
 } else if (curr == 7 && mouseX > 450 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
  x7 = 500;
  y7 = 400;
 } else if (curr == 7 && mouseX > 250 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
  x7 = 300;
  y7 = 500;
 } else if (curr == 7 && mouseX > 350 && mouseX < 450 && mouseY > 450 && mouseY < 550) {
  x7 = 400;
  y7 = 500;
 } else if (curr == 7 && mouseX > 450 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
  x7 = 500;
  y7 = 500;
 }
 //current=8
 if (curr == 8 && mouseX > 350 && mouseX < 450 && mouseY > 250 && mouseY < 350) {
  x8 = 400;
  y8 = 300;
 } else if (curr == 8 && mouseX > 450 && mouseX < 550 && mouseY > 250 && mouseY < 350) {
  x8 = 500;
  y8 = 300;
 } else if (curr == 8 && mouseX > 250 && mouseX < 350 && mouseY > 250 && mouseY < 350) {
  x8 = 300;
  y8 = 300;
 } else if (curr == 8 && mouseX > 250 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
  x8 = 300;
  y8 = 400;
 } else if (curr == 8 && mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
  x8 = 400;
  y8 = 400;
 } else if (curr == 8 && mouseX > 450 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
  x8 = 500;
  y8 = 400;
 } else if (curr == 8 && mouseX > 250 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
  x8 = 300;
  y8 = 500;
 } else if (curr == 8 && mouseX > 350 && mouseX < 450 && mouseY > 450 && mouseY < 550) {
  x8 = 400;
  y8 = 500;
 } else if (curr == 88 && mouseX > 450 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
  x8 = 500;
  y8 = 500;
 }
 //current=9
 if (curr == 9 && mouseX > 350 && mouseX < 450 && mouseY > 250 && mouseY < 350) {
  x9 = 400;
  y9 = 300;
 } else if (curr == 9 && mouseX > 450 && mouseX < 550 && mouseY > 250 && mouseY < 350) {
  x9 = 500;
  y9 = 300;
 } else if (curr == 9 && mouseX > 250 && mouseX < 350 && mouseY > 250 && mouseY < 350) {
  x9 = 300;
  y9 = 300;
 } else if (curr == 9 && mouseX > 250 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
  x9 = 300;
  y9 = 400;
 } else if (curr == 9 && mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
  x9 = 400;
  y9 = 400;
 } else if (curr == 9 && mouseX > 450 && mouseX < 550 && mouseY > 350 && mouseY < 450) {
  x9 = 500;
  y9 = 400;
 } else if (curr == 9 && mouseX > 250 && mouseX < 350 && mouseY > 450 && mouseY < 550) {
  x9 = 300;
  y9 = 500;
 } else if (curr == 9 && mouseX > 350 && mouseX < 450 && mouseY > 450 && mouseY < 550) {
  x9 = 400;
  y9 = 500;
 } else if (curr == 9 && mouseX > 450 && mouseX < 550 && mouseY > 450 && mouseY < 550) {
  x9 = 500;
  y9 = 500;
 }
}