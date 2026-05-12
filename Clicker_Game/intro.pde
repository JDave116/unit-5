void intro(){
  background(0,255,0);
  
  rect(400,600,200,100);
}

void introClicks(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650){
    mode = GAME;
  }
}
