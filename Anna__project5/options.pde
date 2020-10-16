PFont baylandDEMO;
PImage picture1;
PImage picture2;
PImage picture3;
PImage picture4;
PImage pic;

void options() {
  background(#F8E9C2);
  textFont(baylandDEMO);
  textSize(100);
  fill(#FBBEA1);
  text("Options" , 405, 80);
  fill(#FF947A);
  text("Options" , 400, 75);
  
  //OK 
  fill(#EFFAB4);
  tactile(580, 560, 150, 80);
  rect(580, 560, 150, 80, 10);
  textSize(50);
  fill(255);
  text("OK" , 650, 603);
  fill(#D1F2A5);
  text("OK" , 647, 600);
  
  //pictures
  noStroke();
  fill(255);
  Btactile(30, 160, 180, 180);
  rect(30, 160, 180, 180, 20);
  image(picture1, 120, 250, 180, 180);
  
  Btactile(220, 160, 180, 180);
  rect(220, 160, 180, 180, 20);
  image(picture2, 310, 250, 180, 180);
  
  Btactile(410, 160, 180, 180);
  rect(410, 160, 180, 180, 20);
  image(picture3, 500, 250, 180, 180);
  
  Btactile(600, 160, 180, 180);
  rect(600, 160, 180, 180, 20);
  image(picture4, 690, 250, 180, 180);
   
  //slider
  fill(200);
  rect(50, 400, 3, 300);
  circle(50, sliderY, 30);
  size = map(sliderY, 400, 700, 30, 200);
  
  //indicator
  image(pic, 350, 550, size, size);
  fill(225);
  //circle(350, 550, size);
}

void optionsClicks() {
if (mouseX > 580 && mouseX < 730 && mouseY > 560 && mouseY < 640){
    mode = INTRO;
  }
  
//skin
if (mouseX > 30 && mouseX < 210 && mouseY > 160 && mouseY < 340){
  pic = picture1;
}

if (mouseX > 220 && mouseX < 400 && mouseY > 160 && mouseY < 340){
  pic = picture2;
}


if (mouseX > 410 && mouseX < 590 && mouseY > 160 && mouseY < 340){
  pic = picture3;
}


if (mouseX > 600 && mouseX < 780 && mouseY > 160 && mouseY < 340){
  pic = picture4;
}

}
