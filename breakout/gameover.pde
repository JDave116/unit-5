void gameover(){
  theme.pause();
  textAlign(CENTER,CENTER);
  textSize(150);
  if(win == 1){
    background(0,255,0);
    fill(0);
    text("YOU WIN", 400,300);
  }
  if(win == 2){
    background(255,0,0);
    fill(0);
    text("YOU LOSE", 400,300);
    gameover.rewind();
    gameover.play();
  }
}

void gameoverclicks(){
  mode = INTRO;
}
