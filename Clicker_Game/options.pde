void OPTIONS(){
  background(222,81,81);
  slider(); 
  fill(255);
  stroke(0);
  strokeWeight(4);
  tactile(40,60,160,140);
  rect(100,100,120,80);
  textSize(30);
  fill(255,0,0);
  text("MENU",100,100);
  
  imageMode(CENTER);
  
  fill(255);
  tactile(25,225,175,375);
  rect(100,300,150,150);
  image(a,100,300,100,100);
  tactile(325,225,475,375);
  rect(400,300,150,150);
  image(b,400,300,100,100);
  tactile(625,225,775,375);
  rect(700,300,150,150);
  image(c,700,300,110,100);
  stroke(0);
  
  
 
  
  if(choice == 1){
   image(a,600,600,200,200); 
  }else if (choice == 2){
    image(b,600,600,200,200); 
  }else{
    image(c,600,600,220,200); 
  }
  

  
}

void optionclicks(){
  if(mouseX > 40 && mouseX < 160 && mouseY > 60 && mouseY < 140){
    mode = INTRO;
  }
  
  if(mouseX > 25 && mouseX < 175 && mouseY > 225 && mouseY < 375){
    choice = 1;
  }else if ( mouseX > 325 && mouseX < 475 && mouseY > 225 && mouseY < 375){
    choice = 2;
  }else if (mouseX > 625 && mouseX < 775 && mouseY > 225 && mouseY < 375){
    choice  = 3;
  }
}

void controlSlider() {
  if (mouseX > 50 && mouseX < 150 && mouseY > 500 && mouseY < 700) {
    sliderY = mouseY;
    d = map(sliderY, 500, 700, 150, 50);
    x2 = map(sliderY, 500, 700, 100,30);
    y2 = map(sliderY, 500, 700, 100,30);
  }
}


void slider(){
  line(100,500,100,700);
  circle(100, sliderY, d);
  fill(255,0,0); 
  textSize(d/4);
  text("SIZE",100,sliderY);
}

void ball(){  
  imageMode(CENTER);
  stroke(0);
  strokeWeight(5);
  circle(x,y,d);
  if (choice == 1){
    image(a,x,y,x2,y2);
  }else if (choice == 2){
    image(b,x,y,x2,y2);
  }else{
    image(c,x,y,x2,y2);
  }
}
