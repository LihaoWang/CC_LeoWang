function preload() {
 startimg = loadImage('start.jpg');
 door = loadImage("door.jpg");
 door1 = loadImage("door1.jpg");
 room = loadImage("room.jpg");
 sroom = loadImage("sroom.jpg");
 puzzle = loadImage("puzzle.jpg");
 colorimg = loadImage("color.jpg");
 wake = loadImage("wroom.jpg");
 drink = loadImage("drink.jpg");
 pd = loadImage("pd.jpg");
 die = loadImage("die.jpg");
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
 } else if (scene == 2) {
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
 } else if (scene == 3) {
  image(door1, 0, 0);
  fill(255);
  textSize(60);
  text("door opens", width / 2, height / 2);

 } else if (scene == 4) {
  image(room, 0, 0);
  fill(255);
  textSize(60);
  text("look for the key", width / 2, height / 2);

 } else if (scene == 5) {
  image(sroom, 0, 0);
  textSize(40);
  fill(255);
  text("There is a puzzle on the desk. What should I do?", width / 2, height / 2 - 30);
  text("Solve it", width / 2, height / 2 + 80);
  text("Ignore it", width / 2, height / 2 + 160);
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) {
   fill(179, 45, 0);
   text("Solve it", width / 2, height / 2 + 80);
  }
  if (mouseX > width / 2 - 130 && mouseX < width / 2 + 130 && mouseY > height / 2 + 130 && mouseY < height / 2 + 170) {
   fill(179, 45, 0);
   text("Ignore it", width / 2, height / 2 + 160);
  }

 } else if (scene == 6) {
  image(puzzle, 0, 0);
  fill(255);
  text("puzzle here", width / 2, height / 2);

 } else if (scene == 7) {
  image(colorimg, 0, 0);
  fill(255);
  text("challenge here", width / 2, height / 2);

 } else if (scene == 8) {
  image(wake, 0, 0);
  textSize(40);
  fill(255);
  text("The host of the house wakes up, what should I do?", width / 2, height / 2 - 30);
  text("Say sorry", width / 2, height / 2 + 80);
  text("Shot him", width / 2, height / 2 + 160);
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) {
   fill(179, 45, 0);
   text("Say sorry", width / 2, height / 2 + 80);
  }
  if (mouseX > width / 2 - 130 && mouseX < width / 2 + 130 && mouseY > height / 2 + 130 && mouseY < height / 2 + 170) {
   fill(179, 45, 0);
   text("Shot him", width / 2, height / 2 + 160);
  }
 } else if (scene == 9) {
  image(drink, 0, 0);
  textSize(40);
  fill(255);
  text("The host invites you to have a drink", width / 2, height / 2 - 30);
  text("accept", width / 2, height / 2 + 80);
  text("decline", width / 2, height / 2 + 160);
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) {
   fill(179, 45, 0);
   text("accept", width / 2, height / 2 + 80);
  }
  if (mouseX > width / 2 - 130 && mouseX < width / 2 + 130 && mouseY > height / 2 + 130 && mouseY < height / 2 + 170) {
   fill(179, 45, 0);
   text("decline", width / 2, height / 2 + 160);
  }

 } else if (scene == 10) {
  image(pd, 0, 0);
  fill(255);
  textSize(30);
  text("The alarm is triggered, police come and find that the host is a serial killer", width / 2, height / 2);

 } else if (scene == 11) {
  fill(255);
  image(die, 0, 0);
  text("you are poisoned", width / 2, height / 2);
 } else if (scene == 12) {
  fill(255);
  image(die, 0, 0);
  text("you are shot by the host", width / 2, height / 2);

 }

}

function mousePressed() {
 if (scene == 1) {
  if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 + 140 && mouseY < height / 2 + 200) {
   scene = 2;
   console.log(scene);
  }

 } else if (scene == 2) {
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) {
   scene = 3;
  }
  if (mouseX > width / 2 - 130 && mouseX < width / 2 + 130 && mouseY > height / 2 + 130 && mouseY < height / 2 + 170) {
   scene = 4;
  }
 } else if (scene == 3) {
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 - 30 && mouseY < height / 2 + 30) {
   scene = 5;

  }

 } else if (scene == 4) {
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 - 30 && mouseY < height / 2 + 30) {
   scene = 5;

  }
 } else if (scene == 5) {
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) {
   scene = 6;
  }
  if (mouseX > width / 2 - 130 && mouseX < width / 2 + 130 && mouseY > height / 2 + 130 && mouseY < height / 2 + 170) {
   scene = 7;
  }
 } else if (scene == 6) {
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 - 30 && mouseY < height / 2 + 30) {
   scene = 8;

  }
 } else if (scene == 7) {
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 - 30 && mouseY < height / 2 + 30) {
   scene = 8;

  }
 } else if (scene == 8) {
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) {
   scene = 9;
  }
  if (mouseX > width / 2 - 130 && mouseX < width / 2 + 130 && mouseY > height / 2 + 130 && mouseY < height / 2 + 170) {
   scene = 10;
  }
 } else if (scene == 9) {
  if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) {
   scene = 11;
  }
  if (mouseX > width / 2 - 130 && mouseX < width / 2 + 130 && mouseY > height / 2 + 130 && mouseY < height / 2 + 170) {
   scene = 12;
  }
 }
}