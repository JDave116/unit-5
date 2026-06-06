void game() {

  background(0);

  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);


  if (wkey == true) lefty = lefty -5;
  if (skey == true) lefty = lefty +5;
  if (upkey == true) righty = righty -5;
  if (downkey == true) righty = righty +5;


  circle(ballx, bally, balld);
  reset();

  if (timer<0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }


  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    vx = (ballx - leftx)/20;
    vy = (bally - lefty)/20;
  }

  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    vx = (ballx - rightx)/20;
    vy = (bally - righty)/20;
  }

  if (bally - balld/2 <= 0) {
    vy *= -1;
  }

  if (bally + balld/2 >= height) {
    vy *= -1;
  }



  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);



  textSize(50);
  fill(253, 162, 255);
  text(leftscore, width/4, 100);
  text(rightscore, 3*width/4, 100);
  text(timer, 3*width/4, 600);
  timer = timer-1;

  if (ballx <= 0) {
    rightscore++;
    timer = 50;
  } else if (ballx >= width) {
    leftscore++;
    timer = 50;
  }


  if (rightscore > 10 || leftscore > 10) {
    mode = GAMEOVER;
  }
}




void gameClicks() {
}
