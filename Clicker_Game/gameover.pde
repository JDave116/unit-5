void gameover(){
  background(255,0,0);
  textSize(70);
  fill(0);
  text("GAMEOVER", 400,400);
  
  if (score > highscore){
    highscore = score;
  }
  
  textSize(45);
  text("HIGHSCORE:" + highscore , 400, 300);
}

void gameoverClicks(){
  mode = INTRO;
}
