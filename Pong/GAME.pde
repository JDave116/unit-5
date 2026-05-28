void game(){
  
  background(0);
  
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  
  if(wkey == true) lefty = lefty -5;
  if(skey == true) lefty = lefty +5;
  if(upkey == true) righty = righty -5;
  if(downkey == true) righty = righty +5;
  circle(ballx, bally, balld);
}

void gameClicks(){
  
}
