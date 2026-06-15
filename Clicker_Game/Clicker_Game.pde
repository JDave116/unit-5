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
final int OPTIONS = 4;

float x,y,d;
float vx, vy;
int score, lives;
int highscore;
float x2,y2;

color ballfill;

int sliderY;

PImage a;
PImage b;
PImage c;
int choice;

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
  x2 = 30;
  y2 = 30;
  d = 60;
  vx = random(-10,10);
  vy = random(-10,10);
  sliderY = 700;
  choice = 1;
  score = 0;
  lives = 3;
  
  
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  start = minim.loadFile("SUCCESS.wav");
  gameover = minim.loadFile("FAILURE.wav");
  
  highscore = 0;
  
 a = loadImage("a.png");
 b = loadImage("b.png");
 c = loadImage("c.png");
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
  } else if (mode == OPTIONS){
    OPTIONS();
  }else{
    println("ERROR: MODE = " + mode);
  }
}

void tactile(int x, int y, int x2, int y2){
  if(mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2){
    stroke(255);
  }else{
    stroke(0);
  }
}
