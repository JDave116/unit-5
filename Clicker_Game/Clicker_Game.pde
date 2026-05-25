import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;






int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

float x,y,d;
float vx, vy;
int score, lives;


//sound//
Minim minim;
AudioPlayer theme,start, gameover;


void setup() {
  size(800, 800);
  strokeWeight(5);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  mode = INTRO;
  
  x = width/2;
  y = height/2;
  d = 500;
  vx = random(-10,10);
  vy = random(-10,10);
  
  score = 0;
  lives = 3;
  
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
    println("ERROR: MODE = " + mode);
  }
}
