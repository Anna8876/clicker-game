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



void controlSlider() {
    if (mouseY > 400 && mouseY < 700 && mouseX > 35 && mouseX < 65) {
  sliderY = mouseY;
  }
  
 
} // === end of controlSlider ===================================================

void reset() {
  //target
  x = width/2;
  y = height/2;
  size = 200;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //game initialization
  score = 0;
  lives = 3;
  sliderY = 600;
}
