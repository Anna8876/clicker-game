void rgameover() {

  gameover. play();
  theme. pause();
  background(0);
  
  //text
  textFont(lemonYellow);
  textSize(150);
  fill(100);
  text("right win!" , 108, 208);
  fill(#FFFCDD);
  text("right win!" , 100, 200);
  
 
  textFont(CreamCake);
  textSize(40);
  fill(#A2E0E5);
  text("<CLICK TO RESTART>", 400, 450);
  
}



void rgameoverClicks() {
if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800){
    mode = INTRO;
  }
}


 
