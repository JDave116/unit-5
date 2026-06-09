
;int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

color redBrown = #562C29;
color darkPink = #AB5852;
color tan = #CB9979;
color sand = #EADAA0;
color yellow = #D69E49;
color militaryGreen = #838469;
color cobalt = #657268;
color navy = #476066;
color white = #FFFFFF;
color black = #000000;


float paddleX, paddleY, paddleD;
float ballX, ballY, ballD;

int score;
int win;
int lives;
float vx, vy;

boolean akey, dkey;

//bricks//
int[] x;
int[] y;
boolean[] alive;
int n;
int tempx, tempy;



void setup() {
  size(800, 600);
  mode = GAME;


  paddleX = width/2;
  paddleY = 600;
  paddleD = 80;

  vx = random(-4, 4);
  vy = random(-4, 4);

  ballX = width/2;
  ballY = height/2;
  ballD = 20;

  score = 0;
  win = 0;
  lives = 3;

  akey = dkey = false;


  //bricks//
  n = 28;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  tempx = 100;
  tempy = 100;


  int i = 0;
  while (i<n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx +100;
    if (tempx == width) {
      tempx = 100;
      tempy = tempy + 100;
    }
    i = i+1;
  }
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
    println ("MODE ERROR" + mode);
  }
}
