void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
  stroke(#A9C1D9);
  strokeWeight(10);
  click. play();
  click.rewind();
  } else {
    
  stroke(#FF947A);
  strokeWeight(5);
  }
}// === end of tactile ===========================================


void Btactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
  fill(150);
  click. play();
  click.rewind();
  } else {
  fill(255);
  }
}// === end of Btactile ===========================================


void Rtactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
  stroke(250, 255, 0);
  click. play();
  click.rewind();
  } else {
  noStroke();
  }
}// === end of Btactile ===========================================




 




void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == LGAMEOVER) {
    lgameoverClicks();
  } else if (mode == RGAMEOVER) {
    rgameoverClicks();

}
}
  
  
void reset() {
  //target
  bx = width/2;
  by = height/2;
  
  //game initialization
  leftscore = 0;
  rightscore=0;
}
