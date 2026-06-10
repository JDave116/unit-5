PImage[] gif;
int NOF;

void setup() {
  NOF = 9;
  gif = new PImage[NOF];

  int i = 0;
  while ( i < NOF) {
    gif [i] = loadImage("frame_"+i+"_delay-0.1s");
    i=i+1;
  }

}

void draw() {
}
void show() {
}
