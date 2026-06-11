PImage[] gif;
int NOF;
int f;


void setup() {
  NOF = 9;
  gif = new PImage[NOF];

  int i = 0;
  while ( i < NOF) {
    gif [i] = loadImage("frame_"+i+"_delay-0.1s.gif");
    i=i+1;
  }
  
  size(1000,1000);

}

void draw() {
 
  image(gif[f],0,0, width, height);
  f = f+1;
  if (f == 8){
    f = 0;
    f += 1;
  }
  
}
void show() {
}
