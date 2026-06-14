void OPTIONS(){
  background(255);
  fill(255);
  stroke(4);
  rect(100,100,120,80);
  textSize(30);
  fill(255,0,0);
  text("MENU",100,100);
  
}

void optionclicks(){
  if(mouseX > 40 && mouseX < 160 && mouseY > 60 && mouseY < 140){
    mode = INTRO;
  }
}
