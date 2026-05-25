void game(){
  background(0,255,0);
  textSize(40);
  fill(0);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x,y,d);

  x = x + vx;
  y = y + vy;
  
  if(x < d/2 || x> width -d/2){
    vx = vx * -1;
  }
  
  if(y < d/2 || y > height -d/2){
    vy = vy * -1;
  } 
}


void gameClicks(){
  if( dist(mouseX,mouseY,x,y) < d/2){
    score = score+1;
    start.rewind();
    start.play();
  }else{
    lives = lives-1;
  }
  
  if (lives < 1){
    mode = GAMEOVER;
    gameover.rewind();
    gameover.play();
    theme.pause();
    theme.rewind();
  }
}
