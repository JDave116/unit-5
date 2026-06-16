import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

 //pong//
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;


float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;
float vx, vy;

int rightscore, leftscore;
int timer;


boolean wkey, skey, upkey, downkey;
boolean AI;

int maxUp, maxDown;


Minim minim;
AudioPlayer theme,start, gameover;

void setup() {
  size(800, 600);
  mode = INTRO;
  
  
  leftx = 0;
  lefty = height/2;
  leftd = 100;
  
  rightx = width;
  righty = height/2;
  rightd = 100;
  
  vx = random(-4,4);
  vy = random(-4,4);
  
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  maxUp = 50;
  maxDown = 550;
  
  rightscore=0;
  leftscore=0;
  
  timer = 50;
  
  wkey = skey = upkey = downkey = false;
  
  AI = false;
  
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  start = minim.loadFile("SUCCESS.wav");
  gameover = minim.loadFile("FAILURE.wav");
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

void reset(){
  if(ballx < 0 || ballx > width){
    bally = height/2;
    ballx = width/2;
  }
}
