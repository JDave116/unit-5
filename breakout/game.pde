void game(){
  
  background(black);
  fill(white);
  circle(paddleX, paddleY, paddleD);
  circle(ballX, ballY, ballD);
  
  
  if(akey == true ) paddleX = paddleX - 5;
  if(dkey == true ) paddleX = paddleX + 5;
  
  ballX = ballX + vx;
  ballY = ballY + vy;
  
  if (dist(paddleX, paddleY, ballX, ballY) <= paddleD/2 + ballD/2){
    vx = (ballX - paddleX)/10;
    vy = (ballY - paddleY)/10;
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
  
  //bricks//
  int i = 0;
 while(i<n){
   manageBrick(i);
   i = i+1;
 }
 
}

void gameclicks(){
  
}

void manageBrick(int i){
  if(y[i] == 100) fill(yellow);
   if(y[i] == 200) fill(sand);
   if(y[i] == 300) fill(tan);
   if(y[i] == 400) fill(darkPink);
   circle(x[i], y[i], 50);  
   if (dist(x[i], y[i], ballX, ballY) <= 50/2 + ballD/2){
    vx = (ballX - x[i])/10;
    vy = (ballY - y[i])/10;
   }
}
