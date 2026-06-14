void intro(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650){
    stroke(255);
  }else{
    stroke(0);
  }
 
  theme.play();
  background(0,255,0);
  lives = 3;
  score = 0;
  fill(0,255,0);
  rect(400,600,200,100);
  
  textSize(100);
  text("CLICKER GAME" , 400,400);
  fill(255,0,0);
  textSize(70);
  text("START", 400,600);
  
  
  if(mouseX >  300 && mouseX < 500 && mouseY > 440 && mouseY <540){
    stroke(255);
  }else{
    stroke(0);
  }
  
  
  fill(0,255,0);
  rect(400,490,200,100);
  fill(255,0,0);
  textSize(50);
  text("OPTIONS", 400,490);
  
   textSize(100);
  text("CLICKER GAME" , 400,350);
  fill(255,0,0);
  textSize(70);
  text("START", 400,600);
  
 
}

void introClicks(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650){
    mode = GAME;
  }
  
   if(mouseX >  300 && mouseX < 500 && mouseY > 440 && mouseY <540){
    mode = OPTIONS;
  }
}
