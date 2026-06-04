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
  
  ballx = ballx + vx;
  bally = bally + vy;

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
  
  if(ballx <= 0){
    rightscore++;
  }else if(ballx >= width){
      leftscore++;
  }
  
}




void gameClicks() {
}
