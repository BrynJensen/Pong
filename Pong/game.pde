void game() {
  background(olive);
  
  //DRAW PADDLES
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //MOVE PADDLES
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  
  //BALL
  circle(ballx, bally, balld);
  
  ballx = ballx + vx;
  bally = bally + vy;
  
  //BOUNCING
  if (ballx < balld/2 || ballx > width - balld/2) {
    vx = vx * -1;
  }
  if (bally < balld/2 || bally > height - balld/2) {
    vy = vy * -1;
  }
  
  //BALL PADDLE COLISION
  if (dist(ballx, bally, rightx, righty) <= balld/2 + rightd/2 || dist(ballx, bally, leftx, lefty) <= balld/2 + leftd/2) {
   vx = vx * -1; 
  }
}

void gameClicks() {
  
}
