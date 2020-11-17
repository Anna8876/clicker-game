void game() {
  if(ai ==false) {
  if (upkey ==true) righty = righty -5;
  if (downkey ==true) righty = righty + 5;
  } else {  
   if(by > righty) righty = righty +10;   
   if (by > righty) righty = righty- 10;
  }
  
  background(#FCFFB7);
  stroke(#FFEE6A);
  line(400, 0, 400, 600);
  
  
  //draw paddles
  fill(#DF151A);
  stroke(200);
  circle(leftx, lefty, leftd);
  fill(#F4F328);
  circle(rightx, righty, rightd);
  
  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  
  //if(ai ==false) {
  //if (upkey ==true) righty = righty -5;
  //if (downkey ==true) righty = righty + 5;
  //} else {  
  //  by = righty -10;
  //}
  //  if (by > righty) {
  //    righty = righty +5;   
  //} else if (by > righty) {
  //    righty = righty-5;
  //}
  //}
  
  
  
  //ball
  fill(#FD8603);
  circle(bx, by, bd);
  if (timer < 0) {
  bx = bx + vx;             //movement
  by = by + vy;
  }
  
  // //bouncing
  if (bd <= bd/3 ||by >= height-bd/2) {
    vy =vy* -1;
  }
  if (dist(bx, by, rightx, righty) < bd/2 + rightd/2) {
    vx = (bx - rightx) /10;
    vy = (by - righty) /10;
  }
  if (dist(bx, by, leftx, lefty) < bd/2 + leftd/2) {
    vx = (bx - leftx) /10;
    vy = (by - lefty) /10;
  }
  if (by < bd/2 ) {   //bounce off top
    vy = vy * -1;
  }
  
  if (lefty > 500) {
    lefty = 500;
  } else if (lefty < 100) {
    lefty = 100;
}

if (righty > 500) {
    righty = 500;
  } else if (righty < 100) {
    righty = 100;
}
  
  
  timer = timer -1;
  //score
  if (bx > 800) {
   leftscore++;
   by = height-200;
   bx = width/2;
   timer = 200;
  }
   if (bx < 0) {
   rightscore++;
   by = height-200;
   bx = width/2;
   timer = 200;
  }
  
  textSize(30);
  text("score:" + leftscore, 100, 580);
  text("score:" + rightscore, 680, 580);

  if (leftscore > 2) {
    mode = LGAMEOVER;
  } else if (rightscore > 2){
    mode = RGAMEOVER;
  }
  
  if(ai ==false) {
  if (upkey ==true) righty = righty -5;
  if (downkey ==true) righty = righty + 5;
  } else {  
   if(by > righty) righty = righty +10;   
   if (by > righty) righty = righty- 10;
  }
  }
  

  
void gameClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800){
    mode = PAUSE;
  }
}
