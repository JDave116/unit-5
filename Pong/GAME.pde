void game() {

  background(0);

  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);


  if ((wkey == true)&&(lefty > maxUp)) lefty = lefty -5;
  if ((skey == true) && (lefty < maxDown)) lefty = lefty +5;

  if ( AI == false) {
    if ((upkey == true)&& (righty > maxUp)) righty = righty -5;
    if ((downkey == true)&& (righty < maxDown)) righty = righty +5;
  } else {
    if ((bally > righty) && (ballx > 400)) {
      righty +=2;
    } else if ((bally < righty) && (ballx > 400)) {
      righty -=2;
    }
  }

  //if(AI == true){
  //  righty = bally;
  //}

  circle(ballx, bally, balld);
  reset();

  if (timer<0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }


  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    vx = (ballx - leftx)/20;
    vy = (bally - lefty)/20;
    start.rewind();
    start.play();
  }

  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    vx = (ballx - rightx)/20;
    vy = (bally - righty)/20;
    start.rewind();
    start.play();
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



  fill(253, 162, 255);
  text(leftscore, width/4, 100);
  text(rightscore, 3*width/4, 100);
 
  timer = timer-1;

  if (ballx <= 0) {
    rightscore++;
    timer = 50;
  } else if (ballx >= width) {
    leftscore++;
    timer = 50;
  }


  if (rightscore > 2 || leftscore > 2) {
    mode = GAMEOVER;
  }
  fill(255);
  circle(100, 100, 80);
  textSize(20);
  fill(0);
  text("PAUSE", 100, 100);
}




void gameClicks() {
  if (dist(mouseX, mouseY, 100, 100)<40) {
    mode = PAUSE;
  }
}
