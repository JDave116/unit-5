void intro(){
  rightscore = 0;
  leftscore = 0;
  theme.play();
  background(255);
  textAlign(CENTER,CENTER);
  textSize(80);
  fill(0);
  text("PONG" , 400, 120);
  
  fill(0);
  rect(150,300,200,100);
  rect(450,300,200,100);
  
  fill(255);
  textSize(40);
  text("1 PLAYER", 250,350);
  text("2 PLAYER" , 550, 350);
}

void introClicks(){
  if (mouseX > 150 && mouseX < 350 && mouseY > 300 && mouseY < 400){
    mode = GAME;
    AI = true;
  }
  
  if (mouseX > 450 && mouseX < 650 && mouseY > 300 && mouseY < 400){
    mode = GAME;
    AI = false;
  }
}
