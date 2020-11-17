void lgameover() {
  gameover. play();
  theme. pause();
  background(0);
  
  //text
  textFont(lemonYellow);
  textSize(150);
  fill(100);
  text("left win!" , 108, 208);
  fill(#FFFCDD);
  text("left win!" , 100, 200);
  
 
  textFont(CreamCake);
  textSize(40);
  fill(#A2E0E5);
  text("<CLICK TO RESTART>", 400, 450);
  
}



void lgameoverClicks() {
if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800){
    mode = INTRO;
  }
}

 

 
