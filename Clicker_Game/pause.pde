void pause(){
  background(0,0,255);
  
  textAlign(CENTER,CENTER);
  fill(0);
  textSize(150);
  text("PAUSE", 400,200);
  textSize(30);
  text("click anywhere to continue", 400,400);
  
}

void pauseClicks(){
  mode = GAME;
}
