void game() {
  background(green);
  strokeWeight(10);
  stroke(white);
  line(width/2, - 20, width/2, height + 20);

  //DRAW PADDLES
  fill(tan);
  circle(leftx, lefty, leftd);

  fill(olive);
  circle(rightx, righty, rightd);

  //SCOREBOARD
  fill(brown);
  rect(width/2 - 100, -5, 200, 100);

  fill(white);
  textSize(50);
  text(rightscore, width/2 - 50, 50);
  text(leftscore, width/2 + 50, 50);


  timer = timer - 1;

  //MOVE PADDLES
  if (wkey == true && lefty >= leftd/2 + balld && leftscore < 3 && rightscore < 3) lefty = lefty - 5;
  if (skey == true && lefty <= height - (leftd/2 + balld) && leftscore < 3 && rightscore < 3) lefty = lefty + 5;
  if (upkey == true && righty >= rightd/2 + balld && leftscore < 3 && rightscore < 3) righty = righty - 5;
  if (downkey == true && righty <= height - (rightd/2 + balld) && leftscore < 3 && rightscore < 3) righty = righty + 5;

  //BALL
  circle(ballx, bally, balld);

  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //BOUNCING
  if (ballx < balld/2) {
    leftscore += 1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  } else if (ballx > width - balld/2) {
    rightscore += 1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  if (bally < balld/2) {
    vy = vy * -1;
    bally = balld/2;
  }

  if (bally > height - balld/2) {
    vy = vy * - 1;
    bally = height - balld/2;
  }

  //BALL PADDLE COLISION
  if (dist(ballx, bally, rightx, righty) <= balld/2 + rightd/2) {
    vx = (ballx - rightx)/20;
    vy = (bally - righty)/20;
  }

  if (dist(ballx, bally, leftx, lefty) <= balld/2 + leftd/2) {
    vx = (ballx - leftx)/20;
    vy = (bally - lefty)/20;
  }

  if (rightscore == 3 || leftscore == 3) {
    counter ++;
    if (counter > 100) {
     mode = GAMEOVER;
    }
  }
}

void gameClicks() {
}
