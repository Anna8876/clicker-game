

void pause() {
  pause.play();
  theme.pause();
  background(#DCF7F3);
  textFont(heaters);
  textSize(300);
  fill(#CFF09E);
  text("Pause" , 203, 203);
  textFont(heaters);
  textSize(300);
  fill(#0B486B);
  text("Pause" , 200, 200);
  
  textFont(CreamCake);
  textSize(45);
  fill(#A2E0E5);
  text("<CLICK TO RESTART>" , 300, 550);
  
}

void pauseClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800){
    mode = GAME;
    pause.pause();
    theme.play();
  }
}
