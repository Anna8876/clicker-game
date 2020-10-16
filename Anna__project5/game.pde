void game() {
  pause.pause();
  theme.play();
  
  background(#007E80);
  
  textSize(40);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
 
  //pause button
  tactile(30, 30, 70, 70);
  stroke(#FFBDD8);
  fill(#B5D8EB);
  rect(30, 30, 70, 70, 10);
  
  textFont(CreamCake);
  textSize(60);
  fill(0);
  text("ll" , 65, 57);
  
  //display target
  fill(#79BD9A);
  stroke(#0B486B);
  strokeWeight(5);
  //circle(x, y, size);
  image(pic, x, y, size, size);
  
  //moving
  x = x + vx;
  y = y + vy;
  
  //bouncing
  if (x < size/2 ||  x > width-size/2) {
   vx = vx * -1; 
  }
  if ( y < size/2 || y > height-size/2) {
  vy = vy * -1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < size/2) {
    score = score + 1;
    vx = vx * 1.05;
    vy = vy * 1.05;
    coin.rewind();
    coin.play();
  
} else if(dist(mouseX, mouseY, 65, 65) < 35) {
    mode = PAUSE;
 
} else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) mode = GAMEOVER;
  }
  
  
}
