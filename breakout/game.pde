void game(){
  
  background(0);
  
  circle(paddleX, paddleY, paddleD);
  circle(ballX, ballY, ballD);
  
  
  if(akey == true ) paddleX = paddleX - 5;
  if(dkey == true ) paddleX = paddleX + 5;
  
  ballX = ballX + vx;
  ballY = ballY + vy;
  
  if (dist(paddleX, paddleY, ballX, ballY) <= paddleD/2 + ballD/2){
    vx = (ballX - paddleX)/20;
    vy = (ballY - paddleY)/20;
  }
  
  if (ballY - ballD/2 <=0){
    vy *= -1;
  }
  
  //if (ballY + ballD/2 >= height){
  //  vy *= -1;
  //}
  
  if(ballX - ballD/2 <= 0){
    vx *= -1;
  }
  
  if(ballX + ballD/2 >= width){
    vx *= -1;
  }
}

void gameclicks(){
  
}
