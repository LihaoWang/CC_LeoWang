//use the first slider to change the background color
//use the second slider to change the volume of the music
//press any key to play/pause the music
//the 'ppap' image streches and shrinks with the amplitude of the music
var slider;
var slider1;
function preload() {
 song = loadSound('bang.mp3');
 img=loadImage("ppap.jpg");
}

function setup() {
 colorMode(HSB);
 createCanvas(500, 500);
 slider = createSlider(0, 255, 0);
 slider.position(10, 10);
 slider.style('width', '80px');
 slider1 = createSlider(0, 1, 0,0.1);
 slider1.position(10, 30);
 slider1.style('width', '80px');
 analyzer = new p5.Amplitude();
 analyzer.setInput(song);
}

function draw() {
 var val = slider.value();
 background(val);
 var volume = slider1.value();
 song.amp(volume);
 var rms = analyzer.getLevel();
 drawpic(rms);
}

function keyPressed() {
 if (song.isPlaying()) {
  song.pause();
 } else {
  song.play();
 }
}

function drawpic(rms){
 image(img,width/2-180, height/2-100, 300+rms*200, 200+rms*400);
}