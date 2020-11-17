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
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int LGAMEOVER = 4;
final int RGAMEOVER = 4;


//entity variables
float leftx,  lefty, leftd, rightx, righty, rightd;
float bx, by, bd, vx, vy; 

//keyboard vairables
boolean wkey, skey, upkey, downkey;
boolean ai;

//scoring
int leftscore, rightscore, timer;



//sound variables
Minim minim;
AudioPlayer theme, gameover, pause, click, jump;


void setup() {
  size (800, 600);
  mode = INTRO;
  
  //initalize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/3;
  rightd = 200;
 
  //initailize ball
  bx =  width/2;
  by = height/2;
  bd = 100;
  vx = 2;
  vy = -2;
 
  
  //initailize keyboard vars
  wkey = skey = upkey = downkey = false;
  
   //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  gameover = minim.loadFile("gameover1.mp3");
  pause = minim.loadFile("pause.mp3");
  click = minim.loadFile("click.mp3");
  jump = minim.loadFile("jump.mp3");
  
  
    //font
  blueEye = createFont("Blue Eyes - Personal Use.otf", 12);
  CreamCake = createFont("Cream Cake.ttf",12);
  baylandDEMO = createFont("Bayland DEMO.otf", 12);
  heaters = createFont("Heaters.otf", 12);
  lemonYellow = createFont("DK Lemon Yellow Sun.otf", 12);
  
  
  leftscore = 0;
  rightscore = 0;
  timer = 200;
  
  
} //== end of setup ===========================================



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == LGAMEOVER) {
    lgameover();
 } else if (mode == RGAMEOVER) {
    rgameover();
    
  } else {
    println("Mode error: " + mode);
  }
   


  
} //== end of draw ============================================



   
