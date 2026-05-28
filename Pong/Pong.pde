//pong//
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;


float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;


boolean wkey, skey, upkey, downkey;

void setup() {
  size(800, 600);
  mode = GAME;
  
  
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  
  wkey = skey = upkey = downkey = false;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("MODE ERROR" + mode);
  }
}
