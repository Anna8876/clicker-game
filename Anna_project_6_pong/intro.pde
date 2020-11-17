//font
PFont blueEye;
PFont CreamCake;
PFont heaters;
PFont baylandDEMO;
PFont lemonYellow;

void intro() {
  gameover.pause();
  theme.play();
  
  background(#FEFBAF);
  fill(#FB6066);
  stroke(#F66B40);
  strokeWeight(5);
  tactile(100, 450, 200, 100);
  rect(100, 450, 200, 100, 20);
  tactile(500, 450, 200, 100);
  rect(500, 450, 200, 100, 20);
 
  //text
  textFont(CreamCake);
  textSize(50);
  fill(#A2E0E5);
  text("2 Player" , 530, 500);
  
  textFont(CreamCake);
  textSize(50);
  fill(#A2E0E5);
  text("1 Player" , 145, 500);
  
  
  //title
  textFont(blueEye);
  textSize(150);
  fill(#FFCD15);
  text("PONG!" , 255, 255);
  
  textSize(150);
  fill(255);
  text("PONG!" , 250, 250);
  
  reset();
}

void introClicks() {
  //1 player
   if (mouseX > 100 && mouseX < 300 && mouseY > 450 && mouseY < 550){
    mode = GAME;
    ai = true;
  }
  
  //2 player
   if (mouseX > 500 && mouseX < 700 && mouseY > 450 && mouseY < 550){
    mode = GAME;
    ai = false;
  }
}
