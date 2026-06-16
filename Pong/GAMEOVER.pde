void gameover(){
  gameover.rewind();
  gameover.play();
  theme.pause();
  background(255,0,0);
  textAlign(CENTER,CENTER);
  textSize(100);
  fill(0);
  text("GAMEOVER", 400,200);
  
  if(rightscore> leftscore){
    textSize(70);
    text("RIGHT WINS", 400,500);
    
  }else{
    textSize(70);
    text("LEFT WINS", 400,400);
  }
}

void gameoverClicks(){
  mode = INTRO;
  
  
}
