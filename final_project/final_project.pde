//sound resources:
//http://tw.yisell.com/sound/llDTj88ddp4=.html
//http://tw.yisell.com/sound/AIPAIPIEjRQwnKYE=.html
//http://sc.chinaz.com/yinxiao/120710214750.htm
//ALL background images are original

int x1 = 125;
int y1 = 80;
int x2 = 125;
int y2 = 200;
int x3 = 125;
int y3 = 320;
int x4 = 125;
int y4 = 440;
int x5 = 775;
int y5 = 80;
int x6 = 775;
int y6 = 200;
int x7 = 775;
int y7 = 320;
int x8 = 775;
int y8 = 440;
int x9 = 775;
int y9 = 560;
int key_p=500;
int key_a=1;
float hp = 15;
float starttime;
int scene=1;
int curr;
PImage startimg;
PImage begin;
PImage door1;
PImage sroom;
PImage rc;
PImage wake;
PImage drink;
PImage a;
PImage b;
PImage c;
PImage d;
PImage e;
PImage f;
PImage g;
PImage h;
PImage i;
PImage man;
PImage keys;
PImage wkey;
PImage badman;
PImage instruction;
PImage red;
PImage white;
PImage bin;
PImage lounge;
PImage puzzleb;
PImage pinstruction;
PImage playagain;
PFont myFont;
PFont myFont1;
int man_y=80;
int man_p=1;
int man_ry=120;
double s3_time;
double s10_time;
double ins_time;
int click=500;
int click_a=1;
int psize=100;
float hp_d=150;
float hp_da=1;
float backbutton_p=500;
float backbutton_a=1;
double s12_time;
double s11_time;
String puzzle_solve="False";
String continue_button="False";
String test="none";
import ddf.minim.*;
Minim minim;
AudioPlayer song1;
AudioPlayer dooropen;
AudioPlayer gun;
AudioPlayer song2;
AudioPlayer alarm;
AudioPlayer scream;
AudioPlayer dooropen1;

void setup() {
  size(1000, 700);
  //textAlign(CENTER);
  // imageMode(CENTER);
  scene = 1;
  startimg = loadImage("start.jpg");
  begin = loadImage("begin.jpg");
  door1 = loadImage("door1.jpg");
  sroom = loadImage("sroom.jpg");
  rc = loadImage("rc.jpg");
  wake = loadImage("wroom.jpg");
  drink = loadImage("drink.jpg");
  a = loadImage("a.JPG");
  b = loadImage("b.JPG");
  c = loadImage("c.JPG");
  d = loadImage("d.JPG");
  e = loadImage("e.JPG");
  f = loadImage("f.JPG");
  g = loadImage("g.JPG");
  h = loadImage("h.JPG");
  i = loadImage("i.JPG");
  man = loadImage("man.png");
  keys=loadImage("key.png");
  wkey=loadImage("wkey.png");
  badman=loadImage("badman.png");
  instruction=loadImage("instruction.jpg");
  red=loadImage("red.jpg");
  white=loadImage("white.jpg");
  bin=loadImage("bin.jpg");
  lounge=loadImage("lounge.jpg");
  puzzleb=loadImage("puzzle_b.jpg");
  pinstruction=loadImage("pinstruction.jpg");
  playagain=loadImage("playagain.jpg");
  myFont = createFont("Necropsia.ttf", 30);
  myFont1 = createFont("RW-creepsville.ttf", 30);
  minim = new Minim(this);
  song1 = minim.loadFile("sound2.mp3");
  dooropen=minim.loadFile("dooropen.mp3");
  gun=minim.loadFile("gun.mp3");
  song2=minim.loadFile("sound3.mp3");
  alarm=minim.loadFile("alarm.mp3");
  scream=minim.loadFile("scream.wav");
  dooropen1=minim.loadFile("dooropen1.mp3");
  song1.loop();
}
void draw() {
  background(255);
  if (hp<0.1) {
    scene=10;
  }

  if (scene == 1) {
    song1.play();
    alarm.pause();
    textAlign(CENTER);
    image(begin, 0, 0, 1000, 700);
    textFont(myFont);
    textSize(60);
    fill(255);
    text("ROOMMATE ?", width / 2, height / 2);
    text("Start", width / 2 - 6, height / 2 + 180);
    if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 + 140 && mouseY < height / 2 + 200) {
      fill(179, 45, 0);
      textSize(60);
      text("Start", width / 2 - 6, height / 2 + 180);
    }
  } else if (scene==15) {
    imageMode(CORNER);
    textAlign(CENTER);
    textFont(myFont1);
    image(instruction, 0, 0);
    fill(255);
    textSize(50);
    text("HP", 400, 290);
    fill(230, 0, 0);
    rect(450, 250, hp_d, 30);
    hp_d=hp_d-hp_da;
    if (hp_d<0||hp_d>150) {
      hp_da=hp_da*-1;
    }
    println(hp_d);
    fill(255);
    textSize(50);
    text("Click to Continue", 500, 570);
    if (mouseX>300&&mouseX<700&&mouseY>500&&mouseY<570) {
      fill(179, 45, 0);
      text("Click to Continue", 500, 570);
    }
  } else if (scene == 2) {
    image(startimg, 0, 0, 1000, 700);
    image(man, 730, man_y, 224, 512);
    man_y+=man_p;
    if (man_y>120||man_y<60) {
      man_p=man_p*-1;
    }
    println(man_y);

    //hp info
    hpinfo();

    //text & choices
    textAlign(LEFT);
    textFont(myFont1);
    textSize(28);
    fill(255);
    text("Ooops, your key was missing. you can't get into your dorm!", 70, 390);
    textSize(40);
    text("Hit head on the door", 70, 480);
    text("look for the key", 70, 560);

    //hover animation
    if (mouseX > 70 && mouseX < 370 && mouseY > 440 && mouseY < 490) {
      fill(179, 45, 0);
      text("Hit head on the door", 70, 480);
    }
    if (mouseX > 70 && mouseX < 370 && mouseY > 520 && mouseY < 570) {
      fill(179, 45, 0);
      text("look for the key", 70, 560);
    }
  } else if (scene == 3) {
    //door opens
    imageMode(CORNER);
    image(door1, 0, 0, 1000, 700);

    //hp info
    hpinfo();

    //content
    fill(255);
    textAlign(CENTER);
    textSize(60);
    text("Door Opens", width / 2, 300);
    if ((millis()-s3_time)/1000>0.5) {
      textSize(50);
      text("Unfortunately, the bedroom is locked", width / 2, 380);
    }
    if ((millis()-s3_time)/1000>1) {
      textSize(60);
      continue_button="True";
      text("Click to continue", click, 520);
    }
    click=click + click_a;
    if (click>530||click<470) {
      click_a=click_a*-1;
    }
    if (mouseX>300&&mouseX<700&&mouseY>450&&mouseY<530&&continue_button=="True") {
      fill(179, 45, 0);
      text("Click to continue", click, 520);
    }
  } else if (scene == 4) {
    //look for the key
    image(startimg, 0, 0, 1000, 700);
    image(man, 730, man_y, 224, 512);
    man_y+=man_p;
    if (man_y>120||man_y<60) {
      man_p=man_p*-1;
    }

    //hp info
    hpinfo();

    //text & choices
    textAlign(LEFT);
    textFont(myFont1);
    textSize(50);
    fill(255);
    text("Where to go?", 200, 280);
    textSize(70);
    text("Lounge", 200, 400);
    text("Trash bin", 200, 510);

    //hover animation
    if (mouseX > 200 && mouseX < 400 && mouseY > 300 && mouseY < 400) {
      fill(179, 45, 0);
      text("Lounge", 200, 400);
    }
    if (mouseX > 200 && mouseX < 400 && mouseY > 410 && mouseY < 510) {
      fill(179, 45, 0);
      text("Trash bin", 200, 510);
    }
  } else if (scene==13) {
    imageMode(CENTER);
    textAlign(CENTER);
    image(lounge, 500, 350, 1000, 700);
    image(keys, key_p, 200, 150, 150);
    key_p=key_p+key_a;
    if (key_p>530||key_p<470) {
      key_a=key_a*-1;
    }

    //content
    fill(255);
    textSize(45);
    text("You found the key! Door opens!", 500, 400);
    textSize(55);
    text("Click to Continue", 500, 550);

    //hover animation
    if (mouseX>350&&mouseX<650&&mouseY>500&&mouseY<570) {
      fill(179, 45, 0);
      text("Click to Continue", 500, 550);
    }
  } else if (scene==14) {
    imageMode(CENTER);
    textAlign(CENTER);
    image(bin, 500, 350, 1000, 700);
    image(wkey, key_p, 200, 150, 150);
    key_p=key_p+key_a;
    if (key_p>530||key_p<470) {
      key_a=key_a*-1;
    }

    //content
    fill(255);
    textSize(45);
    text("Excuse me? How can the key be in trash bin?", 500, 400);
    textSize(55);
    text("Go to the lounge", 500, 550);


    //hover animation
    if (mouseX>350&&mouseX<650&&mouseY>500&&mouseY<570) {
      fill(179, 45, 0);
      text("Go to the lounge", 500, 550);
    }
  } else if (scene == 5) {
    //puzzle on the desk?
    imageMode(CORNER);
    textAlign(CENTER);
    image(sroom, 0, 0, 1000, 700);
    image(man, 50, man_ry, 224, 512);
    man_ry+=man_p;
    if (man_ry>150||man_ry<90) {
      man_p=man_p*-1;
    }

    //hp info
    hpinfo();
    
    //content
    textAlign(RIGHT);
    textSize(35);
    fill(255);
    text("There is a  strange puzzle on the desk.", 930, 300);
    textSize(50);
    text("Solve it", 930, 430);
    text("Go to resource center for help", 930, 510);

    //hover animation
    if (mouseX > 750 && mouseX < 940 && mouseY > 350 && mouseY < 440) {
      fill(179, 45, 0);
      text("Solve it", 930, 430);
    }
    if (mouseX > 330 && mouseX < 940 && mouseY > 450 && mouseY < 520) {
      fill(179, 45, 0);
      text("Go to resource center for help", 930, 510);
    }
  } else if (scene == 6) {
    imageMode(CORNER);
    image(puzzleb, 0, 0, 1000, 700);

    //timer
    float curr_time=millis();
    double e_time = Math.floor((curr_time-starttime)/1000);
    fill(255, 0, 0);
    println("time:", e_time);

    //hp info
    textAlign(CENTER);
    fill(0);
    textSize(40);
    text("HP", 45, 65);
    fill(230, 0, 0);
    stroke(0);
    rect(80, 30, hp * 10, 30);

    //startover button
    fill(255);
    rect(480,625,200,55);
    fill(0);
    text("Startover", 580, 670);
    
    //instruction button
    fill(255);
    rect(260,625,200,55);
    fill(0);
    text("instructions",360,670);

    image(a, x1, y1, 100, 100);
    image(b, x2, y2, 100, 100);
    image(c, x3, y3, 100, 100);
    image(d, x4, y4, 100, 100);
    image(e, x5, y5, 100, 100);
    image(f, x6, y6, 100, 100);
    image(g, x7, y7, 100, 100);
    image(h, x8, y8, 100, 100);
    image(i, x9, y9, 100, 100);

    stroke(255);
    line(450, 200, 450, 500);
    line(550, 200, 550, 500);
    line(350, 300, 650, 300);
    line(350, 400, 650, 400);

    //decrease hp every 15 seconds
    if (e_time==15||e_time==30||e_time==45||e_time==60||e_time==75||e_time==90) {
      hp=hp-0.15;
    }
    println("hp:", hp);

    //if done
    if (x1==350&&y1==200&&x2==450&&y2==200&&x3==550&&y3==200&&x4==350&&y4==300&&x5==450&&y5==300&&x6==550&&y6==300&&x7==350&&y7==400&&x8==450&&y8==400&&x9==550&&y9==400) {
      textSize(40);
      fill(255);
      puzzle_solve="True";
      dooropen1.play();
      text("Well Done! Door opens", 500, 600);
    }

    //hover animation
    if (mouseX>300&&mouseX<700&&mouseY>520&&mouseY<610&&puzzle_solve=="True") {
      fill(179, 45, 0);
      text("Well Done! Door opens", 500, 600);
    }

    //console.log(hp);
  } else if (scene == 7) {
    image(rc, 0, 0, 1000, 700);

    //hp info
    hpinfo();

    //content
    fill(255);
    textSize(50);
    text("No one is here.", 500, 320);
    textSize(60);
    text("Go back", 500, 430);
    if (mouseX > 350 && mouseX < 640 && mouseY > 360 && mouseY < 440) {
      fill(179, 45, 0);
      text("Go back", width / 2, height / 2 + 80);
    }
  } else if (scene == 8) {
    image(wake, 0, 0, 1000, 700);
    image(badman, 700, man_y, 202, 505);
    man_y=man_y+man_p;
    if (man_y>120||man_y<60) {
      man_p=man_p*-1;
    }

    //hp info
    hpinfo();
    
    //content
    textSize(30);
    textAlign(LEFT);
    fill(255);
    text("Your roommate isn't here. There is a stranger in the room", 70, 330);
    textSize(50);
    text("Say Hi", 70, 430);
    text("Run away and call security", 70, 510);

    //hover animation
    if (mouseX > 70 && mouseX < 270 && mouseY > 360 && mouseY < 440) {
      fill(179, 45, 0);
      text("Say Hi", 70, 430);
    }
    if (mouseX > 70 && mouseX < 570 && mouseY > 450 && mouseY < 520) {
      fill(179, 45, 0);
      text("Run away and call security", 70, 510);
    }
  } else if (scene == 9) {
    image(drink, 0, 0, 1000, 700);
    image(badman, 50, man_ry, 202, 505);
    man_ry=man_ry+man_p;
    if (man_ry>150||man_ry<90) {
      man_p=man_p*-1;
    }
    println(man_ry);

    //hp info
    hpinfo();

    //content
    textAlign(RIGHT);
    textSize(40);
    fill(255);
    text("The man invites you to have a drink", 930, 300);
    textSize(60);
    text("accept", 930, 410);
    text("decline", 930, 510);
    if (mouseX > 730 && mouseX < 930 && mouseY > 350 && mouseY < 410) {
      fill(179, 45, 0);
      text("accept", 930, 410);
    }
    if (mouseX > 730 && mouseX < 930 && mouseY > 450 && mouseY < 510) {
      fill(179, 45, 0);
      text("decline", 930, 510);
    }
  } else if (scene == 10) {
    textAlign(CENTER);
    textSize(45);
    alarm.play();
    song1.pause();
    image(white, 0, 0);
    fill(0);
    text("Time to wake up! You have final today!", 500, 300);

    //play again
    if ((millis()-s10_time)/1000>3) {
      imageMode(CENTER);
      image(playagain, backbutton_p, 450);
      backbutton_p=backbutton_p+backbutton_a;
      if (backbutton_p>570||backbutton_p<430) {
        backbutton_a=backbutton_a*-1;
      }
    }
  } else if (scene == 11) {
    fill(255);
    image(red, 0, 0);

    //hp info
    textAlign(CENTER);
    fill(255);
    //textSize(40);
    //text("HP", 45, 65);
    //fill(230, 0, 0);
    //rect(80, 30, hp * 10, 30);

    //hp=hp-0.1;
    //if (hp<0.5&&test=="none") {
    //  hp=0;
    //  test="done";
    //}
    //while(hp>0.1){
    //  hp=hp-0.1;
    //}
    //content
    textSize(50);
    text("you are poisoned", width / 2, height / 2);

    //wake up
    if ((millis()-s11_time)/1000>5) {
      textAlign(CENTER);
      textSize(45);
      alarm.play();
      song1.pause();
      image(white, 0, 0);
      fill(0);
      text("Time to wake up! You have final today!", 500, 300);
    }

    //play again
    if ((millis()-s11_time)/1000>8) {
      imageMode(CENTER);
      image(playagain, backbutton_p, 450);
      backbutton_p=backbutton_p+backbutton_a;
      if (backbutton_p>570||backbutton_p<430) {
        backbutton_a=backbutton_a*-1;
      }
    }
  } else if (scene == 12) {
    fill(255);
    image(red, 0, 0);

    //wake up
    if ((millis()-s12_time)/1000>3) {
      textAlign(CENTER);
      textSize(45);
      alarm.play();
      song1.pause();
      image(white, 0, 0);
      fill(0);
      text("Time to wake up! You have final today!", 500, 300);
    }

    //play again
    if ((millis()-s12_time)/1000>6) {
      imageMode(CENTER);
      image(playagain, backbutton_p, 450);
      backbutton_p=backbutton_p+backbutton_a;
      if (backbutton_p>570||backbutton_p<430) {
        backbutton_a=backbutton_a*-1;
      }
     
    }
  } else if(scene==16){
    imageMode(CORNER);
    textAlign(RIGHT);
    image(pinstruction,0,0,1000,700);
    if ((millis()-ins_time)/1000>5){
      fill(255);
      textSize(50);
      text("Click anywhere to continue",920,350);
  
    }
  }
}

void mousePressed() {
  if (scene == 1) {
    if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 + 140 && mouseY < height / 2 + 200) {
      scene = 15;
    }
  } else if (scene==15) {
    scene=2;
  } else if (scene == 2) {
    if (mouseX > 70 && mouseX < 370 && mouseY > 440 && mouseY < 490) {
      scene = 3;
      dooropen.play();
      hp = hp - 3;
      s3_time=millis();
    }
    if (mouseX > 70 && mouseX < 370 && mouseY > 520 && mouseY < 570) {
      scene = 4;
    }
  } else if (scene == 3) {
    if (mouseX>300&&mouseX<700&&mouseY>450&&mouseY<530) {
      scene = 5;
    }
  } else if (scene == 4) {
    if (mouseX > 200 && mouseX < 400 && mouseY > 300 && mouseY < 400) {
      dooropen.play();
      scene = 13;
    }
    if (mouseX > 200 && mouseX < 400 && mouseY > 410 && mouseY < 510) {
      hp=hp-2;
      scene = 14;
    }
  } else if (scene==13) {
    if (mouseX>350&&mouseX<650&&mouseY>500&&mouseY<570) {
      scene=3;
    }
  } else if (scene==14) {
    if (mouseX>350&&mouseX<650&&mouseY>500&&mouseY<570) {
      dooropen.play();
      scene=13;
    }
  } else if (scene == 5) {
    if (mouseX > 750 && mouseX < 940 && mouseY > 350 && mouseY < 440) {
      scene = 16;
      ins_time=millis();
    }
    if (mouseX > 330 && mouseX < 940 && mouseY > 450 && mouseY < 520) {
      scene = 7;
      hp=hp-2;
    }
  } else if (scene==16){
    scene=6;
    float time=millis();
    starttime=time;
  }
  
  else if (scene == 6) {
    if (mouseX>300&&mouseX<700&&mouseY>520&&mouseY<610&&puzzle_solve=="True") {
      scene = 8;
    }
    if (mouseX>480&&mouseX<680&&mouseY>620&&mouseY<670) {
      recover();
    }
    if (mouseX>260&&mouseX<460&&mouseY>620&&mouseY<670) {
      scene=16;
    }

    if (mouseX > 125 && mouseX < 225 && mouseY > 80 && mouseY < 180) {
      curr = 1;
    } else if (mouseX > 125 && mouseX < 225 && mouseY > 200 && mouseY < 300) {
      curr = 2;
    } else if (mouseX > 125 && mouseX < 225 && mouseY > 320 && mouseY < 420) {
      curr = 3;
    } else if (mouseX > 125 && mouseX < 225 && mouseY > 440 && mouseY < 540) {
      curr = 4;
    } else if (mouseX > 775 && mouseX < 875 && mouseY > 80 && mouseY < 180) {
      curr = 5;
    } else if (mouseX > 775 && mouseX < 875 && mouseY > 200 && mouseY < 300) {
      curr = 6;
    } else if (mouseX > 775 && mouseX < 875 && mouseY > 320 && mouseY < 420) {
      curr = 7;
    } else if (mouseX > 775 && mouseX < 875 && mouseY > 440 && mouseY < 540) {
      curr = 8;
    } else if (mouseX > 775 && mouseX < 875 && mouseY > 560 && mouseY < 660) {
      curr = 9;
    }
    //current=1
    if (curr == 1 && mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300) {
      x1 = 350;
      y1 = 200;
    } else if (curr == 1 && mouseX > 450 && mouseX < 550 && mouseY > 200 && mouseY < 300) {
      x1 = 450;
      y1 = 200;
    } else if (curr == 1 && mouseX > 550 && mouseX < 650 && mouseY > 200 && mouseY < 300) {
      x1 = 550;
      y1 = 200;
    } else if (curr == 1 && mouseX > 350 && mouseX < 450 && mouseY > 300 && mouseY < 400) {
      x1 = 350;
      y1 = 300;
    } else if (curr == 1 && mouseX > 450 && mouseX < 550 && mouseY > 300 && mouseY < 400) {
      x1 = 450;
      y1 = 300;
    } else if (curr == 1 && mouseX > 550 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
      x1 = 550;
      y1 = 300;
    } else if (curr == 1 && mouseX > 350 && mouseX < 450 && mouseY > 400 && mouseY < 500) {
      x1 = 350;
      y1 = 400;
    } else if (curr == 1 && mouseX > 450 && mouseX < 550 && mouseY > 400 && mouseY < 500) {
      x1 = 450;
      y1 = 400;
    } else if (curr == 1 && mouseX > 550 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
      x1 = 550;
      y1 = 400;
    }
    //current=2
    if (curr == 2 && mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300) {
      x2 = 350;
      y2 = 200;
    } else if (curr == 2 && mouseX > 450 && mouseX < 550 && mouseY > 200 && mouseY < 300) {
      x2 = 450;
      y2 = 200;
    } else if (curr == 2 && mouseX > 550 && mouseX < 650 && mouseY > 200 && mouseY < 300) {
      x2 = 550;
      y2 = 200;
    } else if (curr == 2 && mouseX > 350 && mouseX < 450 && mouseY > 300 && mouseY < 400) {
      x2 = 350;
      y2 = 300;
    } else if (curr == 2 && mouseX > 450 && mouseX < 550 && mouseY > 300 && mouseY < 400) {
      x2 = 450;
      y2 = 300;
    } else if (curr == 2 && mouseX > 550 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
      x2 = 550;
      y2 = 300;
    } else if (curr == 2 && mouseX > 350 && mouseX < 450 && mouseY > 400 && mouseY < 500) {
      x2 = 350;
      y2 = 400;
    } else if (curr == 2 && mouseX > 450 && mouseX < 550 && mouseY > 400 && mouseY < 500) {
      x2 = 450;
      y2 = 400;
    } else if (curr == 2 && mouseX > 550 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
      x2 = 550;
      y2 = 400;
    }
    //current=3
    if (curr == 3 && mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300) {
      x3 = 350;
      y3 = 200;
    } else if (curr == 3 && mouseX > 450 && mouseX < 550 && mouseY > 200 && mouseY < 300) {
      x3 = 450;
      y3 = 200;
    } else if (curr == 3 && mouseX > 550 && mouseX < 650 && mouseY > 200 && mouseY < 300) {
      x3 = 550;
      y3 = 200;
    } else if (curr == 3 && mouseX > 350 && mouseX < 450 && mouseY > 300 && mouseY < 400) {
      x3 = 350;
      y3 = 300;
    } else if (curr == 3 && mouseX > 450 && mouseX < 550 && mouseY > 300 && mouseY < 400) {
      x3 = 450;
      y3 = 300;
    } else if (curr == 3 && mouseX > 550 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
      x3 = 550;
      y3 = 300;
    } else if (curr == 3 && mouseX > 350 && mouseX < 450 && mouseY > 400 && mouseY < 500) {
      x3 = 350;
      y3 = 400;
    } else if (curr == 3 && mouseX > 450 && mouseX < 550 && mouseY > 400 && mouseY < 500) {
      x3 = 450;
      y3 = 400;
    } else if (curr == 3 && mouseX > 550 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
      x3 = 550;
      y3 = 400;
    }
    //current=4
    if (curr == 4 && mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300) {
      x4 = 350;
      y4 = 200;
    } else if (curr == 4 && mouseX > 450 && mouseX < 550 && mouseY > 200 && mouseY < 300) {
      x4 = 450;
      y4 = 200;
    } else if (curr == 4 && mouseX > 550 && mouseX < 650 && mouseY > 200 && mouseY < 300) {
      x4 = 550;
      y4 = 200;
    } else if (curr == 4 && mouseX > 350 && mouseX < 450 && mouseY > 300 && mouseY < 400) {
      x4 = 350;
      y4 = 300;
    } else if (curr == 4 && mouseX > 450 && mouseX < 550 && mouseY > 300 && mouseY < 400) {
      x4 = 450;
      y4 = 300;
    } else if (curr == 4 && mouseX > 550 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
      x4 = 550;
      y4 = 300;
    } else if (curr == 4 && mouseX > 350 && mouseX < 450 && mouseY > 400 && mouseY < 500) {
      x4 = 350;
      y4 = 400;
    } else if (curr == 4 && mouseX > 450 && mouseX < 550 && mouseY > 400 && mouseY < 500) {
      x4 = 450;
      y4 = 400;
    } else if (curr == 4 && mouseX > 550 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
      x4 = 550;
      y4 = 400;
    }
    //current=5
    if (curr == 5 && mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300) {
      x5 = 350;
      y5 = 200;
    } else if (curr == 5 && mouseX > 450 && mouseX < 550 && mouseY > 200 && mouseY < 300) {
      x5 = 450;
      y5 = 200;
    } else if (curr == 5 && mouseX > 550 && mouseX < 650 && mouseY > 200 && mouseY < 300) {
      x5 = 550;
      y5 = 200;
    } else if (curr == 5 && mouseX > 350 && mouseX < 450 && mouseY > 300 && mouseY < 400) {
      x5 = 350;
      y5 = 300;
    } else if (curr == 5 && mouseX > 450 && mouseX < 550 && mouseY > 300 && mouseY < 400) {
      x5 = 450;
      y5 = 300;
    } else if (curr == 5 && mouseX > 550 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
      x5 = 550;
      y5 = 300;
    } else if (curr == 5 && mouseX > 350 && mouseX < 450 && mouseY > 400 && mouseY < 500) {
      x5 = 350;
      y5 = 400;
    } else if (curr == 5 && mouseX > 450 && mouseX < 550 && mouseY > 400 && mouseY < 500) {
      x5 = 450;
      y5 = 400;
    } else if (curr == 5 && mouseX > 550 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
      x5 = 550;
      y5 = 400;
    }
    //current=6
    if (curr == 6 && mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300) {
      x6 = 350;
      y6 = 200;
    } else if (curr == 6 && mouseX > 450 && mouseX < 550 && mouseY > 200 && mouseY < 300) {
      x6 = 450;
      y6 = 200;
    } else if (curr == 6 && mouseX > 550 && mouseX < 650 && mouseY > 200 && mouseY < 300) {
      x6 = 550;
      y6 = 200;
    } else if (curr == 6 && mouseX > 350 && mouseX < 450 && mouseY > 300 && mouseY < 400) {
      x6 = 350;
      y6 = 300;
    } else if (curr == 6 && mouseX > 450 && mouseX < 550 && mouseY > 300 && mouseY < 400) {
      x6 = 450;
      y6 = 300;
    } else if (curr == 6 && mouseX > 550 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
      x6 = 550;
      y6 = 300;
    } else if (curr == 6 && mouseX > 350 && mouseX < 450 && mouseY > 400 && mouseY < 500) {
      x6 = 350;
      y6 = 400;
    } else if (curr == 6 && mouseX > 450 && mouseX < 550 && mouseY > 400 && mouseY < 500) {
      x6 = 450;
      y6 = 400;
    } else if (curr == 6 && mouseX > 550 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
      x6 = 550;
      y6 = 400;
    }
    //current=7
    if (curr == 7 && mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300) {
      x7 = 350;
      y7 = 200;
    } else if (curr == 7 && mouseX > 450 && mouseX < 550 && mouseY > 200 && mouseY < 300) {
      x7 = 450;
      y7 = 200;
    } else if (curr == 7 && mouseX > 550 && mouseX < 650 && mouseY > 200 && mouseY < 300) {
      x7 = 550;
      y7 = 200;
    } else if (curr == 7 && mouseX > 350 && mouseX < 450 && mouseY > 300 && mouseY < 400) {
      x7 = 350;
      y7 = 300;
    } else if (curr == 7 && mouseX > 450 && mouseX < 550 && mouseY > 300 && mouseY < 400) {
      x7 = 450;
      y7 = 300;
    } else if (curr == 7 && mouseX > 550 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
      x7 = 550;
      y7 = 300;
    } else if (curr == 7 && mouseX > 350 && mouseX < 450 && mouseY > 400 && mouseY < 500) {
      x7 = 350;
      y7 = 400;
    } else if (curr == 7 && mouseX > 450 && mouseX < 550 && mouseY > 400 && mouseY < 500) {
      x7 = 450;
      y7 = 400;
    } else if (curr == 7 && mouseX > 550 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
      x7 = 550;
      y7 = 400;
    }
    //current=8
    if (curr == 8 && mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300) {
      x8 = 350;
      y8 = 200;
    } else if (curr == 8 && mouseX > 450 && mouseX < 550 && mouseY > 200 && mouseY < 300) {
      x8 = 450;
      y8 = 200;
    } else if (curr == 8 && mouseX > 550 && mouseX < 650 && mouseY > 200 && mouseY < 300) {
      x8 = 550;
      y8 = 200;
    } else if (curr == 8 && mouseX > 350 && mouseX < 450 && mouseY > 300 && mouseY < 400) {
      x8 = 350;
      y8 = 300;
    } else if (curr == 8 && mouseX > 450 && mouseX < 550 && mouseY > 300 && mouseY < 400) {
      x8 = 450;
      y8 = 300;
    } else if (curr == 8 && mouseX > 550 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
      x8 = 550;
      y8 = 300;
    } else if (curr == 8 && mouseX > 350 && mouseX < 450 && mouseY > 400 && mouseY < 500) {
      x8 = 350;
      y8 = 400;
    } else if (curr == 8 && mouseX > 450 && mouseX < 550 && mouseY > 400 && mouseY < 500) {
      x8 = 450;
      y8 = 400;
    } else if (curr == 8 && mouseX > 550 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
      x8 = 550;
      y8 = 400;
    }
    //current=9
    if (curr == 9 && mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300) {
      x9 = 350;
      y9 = 200;
    } else if (curr == 9 && mouseX > 450 && mouseX < 550 && mouseY > 200 && mouseY < 300) {
      x9 = 450;
      y9 = 200;
    } else if (curr == 9 && mouseX > 550 && mouseX < 650 && mouseY > 200 && mouseY < 300) {
      x9 = 550;
      y9 = 200;
    } else if (curr == 9 && mouseX > 350 && mouseX < 450 && mouseY > 300 && mouseY < 400) {
      x9 = 350;
      y9 = 300;
    } else if (curr == 9 && mouseX > 450 && mouseX < 550 && mouseY > 300 && mouseY < 400) {
      x9 = 450;
      y9 = 300;
    } else if (curr == 9 && mouseX > 550 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
      x9 = 550;
      y9 = 300;
    } else if (curr == 9 && mouseX > 350 && mouseX < 450 && mouseY > 400 && mouseY < 500) {
      x9 = 350;
      y9 = 400;
    } else if (curr == 9 && mouseX > 450 && mouseX < 550 && mouseY > 400 && mouseY < 500) {
      x9 = 450;
      y9 = 400;
    } else if (curr == 9 && mouseX > 550 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
      x9 = 550;
      y9 = 400;
    }
  } else if (scene == 7) {
    if (mouseX > 350 && mouseX < 640 && mouseY > 360 && mouseY < 440) {
      scene = 5;
    }
  } else if (scene == 8) {
    if (mouseX > 70 && mouseX < 270 && mouseY > 360 && mouseY < 440) {
      scene = 9;
    }
    if (mouseX > 70 && mouseX < 570 && mouseY > 450 && mouseY < 520) {
      scene = 10;
      s10_time=millis();
    }
  } else if (scene == 9) {
    if (mouseX > 730 && mouseX < 930 && mouseY > 350 && mouseY < 410) {
      scene = 11;
      s11_time=millis();
      scream.play();
    }
    if (mouseX > 730 && mouseX < 930 && mouseY > 450 && mouseY < 510) {
      gun.play();
      scene = 12;
      s12_time=millis();
    }
  } else if (scene==11) {
    if (mouseX>300&&mouseX<700&&mouseY>390&&mouseY<450) {
      scene=1;
      recover();
      hp=15;
    }
  } else if (scene==12) {
    if (mouseX>300&&mouseX<700&&mouseY>390&&mouseY<450) {
      scene=1;
      recover();
      hp=15;
    }
  } else if (scene==10) {
    if (mouseX>300&&mouseX<700&&mouseY>390&&mouseY<450) {
      scene=1;
      recover();
      hp=15;
    }
  }
}
void recover() {
  x1 = 125;
  y1 = 80;
  x2 = 125;
  y2 = 200;
  x3 = 125;
  y3 = 320;
  x4 = 125;
  y4 = 440;
  x5 = 775;
  y5 = 80;
  x6 = 775;
  y6 = 200;
  x7 = 775;
  y7 = 320;
  x8 = 775;
  y8 = 440;
  x9 = 775;
  y9 = 560;
}

void hpinfo() {
  textAlign(CENTER);
  stroke(0);
  fill(255);
  textSize(40);
  text("HP", 45, 65);
  fill(230, 0, 0);
  rect(80, 30, hp * 10, 30);
}