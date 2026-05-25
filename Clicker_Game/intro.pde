void intro(){
  background(0,255,0);
  
  noFill();
  rect(400,600,200,100);
  stroke(0);
  textSize(100);
  text("CLICKER GAME" , 400,400);
  fill(255,0,0);
  textSize(70);
  text("START", 400,600);
}

void introClicks(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650){
    mode = GAME;
  }
}
