//font
PFont blueEye;
PFont CreamCake;

void intro() {
  gameover.pause();
  theme.play();
  
  background(#FEFBAF);
  fill(#FB6066);
  stroke(#F66B40);
  strokeWeight(5);
  tactile(100, 500, 200, 100);
  rect(100, 500, 200, 100, 20);
  tactile(500, 500, 200, 100);
  rect(500, 500, 200, 100, 20);
 
  //text
  textFont(CreamCake);
  textSize(50);
  fill(#A2E0E5);
  text("START" , 600, 545);
  
  textFont(CreamCake);
  textSize(50);
  fill(#A2E0E5);
  text("OPTIONS" , 200, 545);
  
  
  //title
  textFont(blueEye);
  textSize(100);
  fill(#FFCD15);
  text("CLICKER GAME" , 405, 305);
  
  textSize(100);
  fill(255);
  text("CLICKER GAME" , 400, 300);
}

void introClicks() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 600){
    mode = OPTIONS;
  }
  
   if (mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 600){
    mode = GAME;
  }
}
