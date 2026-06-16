void game() {

  image(gif[f], 0, 0, width, height);
  println(frameCount);
  if (frameCount % 2 == 0) f = f+1;
  if (f == NOF) f = 0;

  fill(white);
  circle(paddleX, paddleY, paddleD);
  circle(ballX, ballY, ballD);


  if ((akey == true ) && (paddleX > maxleft)) paddleX = paddleX - 5;
  if ((dkey == true ) && (paddleX < maxright)) paddleX = paddleX + 5;

  ballX = ballX + vx;
  ballY = ballY + vy;



  if (dist(paddleX, paddleY, ballX, ballY) <= paddleD/2 + ballD/2) {
    vx = (ballX - paddleX)/10;
    vy = (ballY - paddleY)/10;
  }

  if (ballY - ballD/2 <=0) {
    vy *= -1;
  }

  if (ballY + ballD/2 >= height) {
    lives = lives - 1;
    resetball();
  }

  if (ballX - ballD/2 <= 0) {
    vx *= -1;
  }

  if (ballX + ballD/2 >= width) {
    vx *= -1;
  }


  //bricks//
  int i = 0;
  while (i<n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i = i+1;
  }

  textAlign(CENTER, CENTER);
  fill(white);
  textSize(50);
  text("SCORE:" + score, 100, 40);

  text("LIVES:" + lives, 700, 40);

  if (score == 28) {
    mode = GAMEOVER;
    win = 1;
  }
  if (lives == 0) {
    mode = GAMEOVER;
    win = 2;
  }
  
  fill(255);
  circle(400,35,60);
  textSize(20);
  fill(0);
  text("PAUSE", 400,35);
}


void gameclicks() {
  if(dist(mouseX, mouseY, 400,35)<30){
    mode = PAUSE;
  }
}

void manageBrick(int i) {
  if (y[i] == 100) fill(yellow);
  if (y[i] == 200) fill(sand);
  if (y[i] == 300) fill(tan);
  if (y[i] == 400) fill(darkPink);
  circle(x[i], y[i], 50);
  if (dist(x[i], y[i], ballX, ballY) <= 50/2 + ballD/2) {
    vx = (ballX - x[i])/10;
    vy = (ballY - y[i])/10;
    alive[i] = false;
    score = score+1;
    start.rewind();
    start.play();
  }
}

void resetball() {
  ballX = 400;
  ballY = 420;
  ballD = 20;
  circle(ballX, ballY, ballD);
}
