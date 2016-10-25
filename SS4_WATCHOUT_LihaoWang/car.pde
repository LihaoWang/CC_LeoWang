class Car {
  float carspeed;
  int location;
  int random1;
  int random2;
  float speed;
  PImage img2;
  Car(float tempcarspeed, int templocation,int temprandom1,int temprandom2,float tempspeed) {
    carspeed=tempcarspeed;
    location=templocation;
    random1=temprandom1;
    random2=temprandom2;
    speed=tempspeed;
    img2=loadImage("Car1.png");
  }

  void display() {
    image(img2, carspeed=carspeed-speed, location, 120, 50);
    println(carspeed);
  }
  void rotation() {
    if (carspeed<-120) {
      carspeed=1000;
      location=int(random(random1, random2));
    }
  }
  void touch() {
    if (mouseY>=location-50 && carspeed<=50 && mouseY<=location+50 && carspeed>=-80) {
      state="gameoneend";
      gtimer=millis();
      displaytimer=(gtimer-itimer)/1000;
      println(displaytimer);
      carspeed=1200;
      location=int(random(random1,random2));
    }
  }
}