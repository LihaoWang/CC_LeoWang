function preload() {
 stats = loadTable("temp.csv");
 phone = loadImage("phone.jpg");
 temp1 = loadImage("1.jpg");
 temp2 = loadImage("2.jpg");
 temp3 = loadImage("3.jpg");
 temp4 = loadImage("4.jpg");
 temp5 = loadImage("5.jpg");
 temp6 = loadImage("6.jpg");
 // temp7 = loadImage("7.jpg");
 temp8 = loadImage("8.jpg");
 temp9 = loadImage("9.jpg");
 temp10 = loadImage("10.jpg");
 temp11 = loadImage("11.jpg");
 temp12 = loadImage("12.jpg");
 temp13 = loadImage("13.jpg");
 temp14 = loadImage("14.jpg");
 temp15 = loadImage("15.jpg");
 temp16 = loadImage("16.jpg");
 temp17 = loadImage("17.jpg");
 temp18 = loadImage("18.jpg");
 temp19 = loadImage("19.jpg");
 temp20 = loadImage("20.jpg");
 temp21 = loadImage("21.jpg");
}

function setup() {
 createCanvas(800, 500);
 textAlign(CENTER);
 var rowCount = stats.getRowCount();
 temp = []
 console.log(rowCount)
 for (var i = 0; i < rowCount; i++) {
  temp[i] = stats.getNum(i, 0);
 }
}

function draw() {
 background(255);
 stroke(204);
 line(200, 300, 200, 200);
 line(200, 300, 600, 300);
 fill(217, 217, 217);
 rect(0, 50, width, 70);
 fill(64, 64, 64);
 noStroke();
 textSize(40);
 text("Temperature Curve of iPhone 7 Plus", width / 2, 100);
 image(phone, 50, 150, 110, 200)
 stroke(204);
 for (var i = 0; i < temp.length; i++) {
  var x = map(i, 0, temp.length - 1, 200, 600);
  line(x, 200, x, 300);
 }
 noFill();
 stroke(0);
 beginShape();
 for (var k = 0; k < temp.length; k++) {
  var z = map(k, 0, temp.length - 1, 200, 600);
  var y = map(temp[k], 0, 45, 300, 200);
  vertex(z, y);
 }
 endShape();
 showpic();
}

function showpic() {
 if (mouseX > 200 && mouseX < 220 && mouseY < 300 && mouseY > 200) {
  image(temp1, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[0] + " ℃", 400, 400)
 }
 if (mouseX > 220 && mouseX < 240 && mouseY < 300 && mouseY > 200) {
  image(temp2, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[1] + " ℃", 400, 400)
 }
 if (mouseX > 240 && mouseX < 260 && mouseY < 300 && mouseY > 200) {
  image(temp3, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[2] + " ℃", 400, 400)
 }
 if (mouseX > 260 && mouseX < 280 && mouseY < 300 && mouseY > 200) {
  image(temp4, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[3] + " ℃", 400, 400)
 }
 if (mouseX > 280 && mouseX < 300 && mouseY < 300 && mouseY > 200) {
  image(temp5, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[4] + " ℃", 400, 400)
 }
 if (mouseX > 300 && mouseX < 320 && mouseY < 300 && mouseY > 200) {
  image(temp6, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[5] + " ℃", 400, 400)
 }
 if (mouseX > 320 && mouseX < 340 && mouseY < 300 && mouseY > 200) {
  image(temp8, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[6] + " ℃", 400, 400)
 }
 if (mouseX > 340 && mouseX < 360 && mouseY < 300 && mouseY > 200) {
  image(temp9, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[7] + " ℃", 400, 400)
 }
 if (mouseX > 360 && mouseX < 380 && mouseY < 300 && mouseY > 200) {
  image(temp10, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[8] + " ℃", 400, 400)
 }
 if (mouseX > 380 && mouseX < 400 && mouseY < 300 && mouseY > 200) {
  image(temp11, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[9] + " ℃", 400, 400)
 }
 if (mouseX > 400 && mouseX < 420 && mouseY < 300 && mouseY > 200) {
  image(temp12, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[10] + " ℃", 400, 400)
 }
 if (mouseX > 420 && mouseX < 440 && mouseY < 300 && mouseY > 200) {
  image(temp13, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[11] + " ℃", 400, 400)
 }
 if (mouseX > 440 && mouseX < 460 && mouseY < 300 && mouseY > 200) {
  image(temp14, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[12] + " ℃", 400, 400)
 }
 if (mouseX > 460 && mouseX < 480 && mouseY < 300 && mouseY > 200) {
  image(temp15, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[13] + " ℃", 400, 400)
 }
 if (mouseX > 480 && mouseX < 500 && mouseY < 300 && mouseY > 200) {
  image(temp16, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[14] + " ℃", 400, 400)
 }
 if (mouseX > 500 && mouseX < 520 && mouseY < 300 && mouseY > 200) {
  image(temp17, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[15] + " ℃", 400, 400)
 }
 if (mouseX > 520 && mouseX < 540 && mouseY < 300 && mouseY > 200) {
  image(temp18, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[16] + " ℃", 400, 400)
 }
 if (mouseX > 540 && mouseX < 560 && mouseY < 300 && mouseY > 200) {
  image(temp19, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[17] + " ℃", 400, 400)
 }
 if (mouseX > 560 && mouseX < 580 && mouseY < 300 && mouseY > 200) {
  image(temp20, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[18] + " ℃", 400, 400)
 }
 if (mouseX > 580 && mouseX < 600 && mouseY < 300 && mouseY > 200) {
  image(temp21, 630, 200, 130, 100);
  fill(0);
  textSize(30);
  text("current temperature is " + temp[19] + " ℃", 400, 400)
 }
}