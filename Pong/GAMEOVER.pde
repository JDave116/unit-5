void gameover(){
  background(255,0,0);
  textAlign(CENTER,CENTER);
  textSize(100);
  fill(0);
  text("GAMEOVER", 400,400);
}

void gameoverClicks(){
  mode = INTRO;
}
