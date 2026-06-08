int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;


float paddleX, paddleY, paddleD;
float ballX, ballY, ballD;

float score;
float vx, vy;

boolean akey, dkey;

//bricks//
int[] x;
int[] y;
int n;

void setup(){
  size(800,600);
  mode = GAME;
  
  
  paddleX = width/2;
  paddleY = 600;
  paddleD = 80;
  
  vx = random(-4,4);
  vy = random(-4,4);
  
  ballX = width/2;
  ballY = height/2;
  ballD = 20;
  
  score = 0;
  
  akey = dkey = false;
  
  
  //bricks//
  n = 6;
  x = new int[n];
  y = new int[n];
  
  
  x[0] = 100;
  y[0] = 100;
  
  x[1] = 400;
  y[1] = 100;
  
  x[2] = 700;
  y[2] = 100;
  
  x[3] = 100;
  y[3] = 200;
  
  x[4] = 400;
  y[4] = 200;
  
  x[5] = 700;
  y[5] = 200;
  
  
}

void draw() {
  if (mode == INTRO){
    intro();
  }else if (mode == GAME){
    game();
  }else if (mode == PAUSE){
    pause();
  }else if (mode == GAMEOVER){
    gameover();
  }else {
    println ("MODE ERROR" + mode);
  }
}
  
