//Anna Fan
//block 1-1b
//Oct 6, 2020

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//TARGET VARIACLES =====================================
float x, y, d;
float vx, vy; //target velocity
float sliderY;
float size;
int score, lives;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover, pause, click;

//COLOR PALLETTE


void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  
  
  //targey initialization
  x = width/2;
  y = height/2;
  d = size;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  coin = minim.loadFile("score.mp3");
  bump = minim.loadFile("bump.mp3");
  gameover = minim.loadFile("gameover.wav");
  pause = minim.loadFile("pause.mp3");
  click = minim.loadFile("click.mp3");
  
  //font
  blueEye = createFont("Blue Eyes - Personal Use.otf", 200);
  CreamCake = createFont("Cream Cake.ttf",200);
  baylandDEMO = createFont("Bayland DEMO.otf", 200);
  heaters = createFont("Heaters.otf", 200);
   
  //image
  picture1   = loadImage("picture1.png");
  picture2   = loadImage("picture2.png");
  picture3   = loadImage("picture3.png");
  picture4   = loadImage("picture4.png");
  
  //slider
  sliderY = 400;
  size = sliderY;
  size = 200;
  pic= picture1;
  
  reset();
}// === end of setup ===================================



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
  
}// === end of draw ====================================
