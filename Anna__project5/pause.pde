PFont heaters;

void pause() {
  
  textFont(heaters);
  textSize(150);
  fill(#CFF09E);
  text("Pause" , 403, 403);
  textFont(heaters);
  textSize(150);
  fill(#0B486B);
  text("Pause" , 400, 400);
  
  //song
  theme.pause();
  pause.play();

 //pause
  tactile(30, 30, 70, 70);
  fill(255, 0, 0);
  stroke(0);
  rect(30, 30, 70, 70, 10);
  fill(0);
  triangle(35, 35, 95, 95, 50, 50);
}

void pauseClicks() {
  if(dist(mouseX, mouseY, 65, 65) < 35) {
    mode = GAME;
  }
  
}
