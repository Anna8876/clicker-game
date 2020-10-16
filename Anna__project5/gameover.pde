void gameover() {
  background(#293241);
  theme.pause();
  gameover.play();
  
  //gamover b
  Rtactile(300, 550, 200, 100);
  fill(#ED4751);
  rect(300, 550, 200, 100 ,20);
  //text
  textFont(CreamCake);
  textSize(50);
  fill(#EFDABF);
  text("RESTART" , 390, 595);
  
  textFont(heaters);
  textSize(200);
  fill(#C0404F);
  text("GAMEOVER" , 405, 205);
  
  textFont(heaters);
  textSize(200);
  fill(#EFDABF);
  text("GAMEOVER" , 400, 200);
  
  textFont(CreamCake);
  textSize(50);
  fill(#EFDABF);
  text("highest score:" , 351, 501);
  
  textFont(CreamCake);
  textSize(50);
  fill(#C0404F);
  text("highest score:" , 350, 500);
  
  //exit
  Rtactile(600, 700, 125, 50);
  rect(600, 700, 125, 50, 10);
  textFont(CreamCake);
  textSize(40);
  fill(#EFDABF);
  text("EXIT" , 660, 725);
  
 
}

void gameoverClicks() {
  theme.rewind();
  reset();
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650){
    mode = INTRO;
  }
  
  if (mouseX > 600  && mouseX < 725 && mouseY > 700 && mouseY < 750) {
    exit();
  }
}
    

 

 
