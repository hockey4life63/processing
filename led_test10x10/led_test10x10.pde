final int LEDsize=50;
class led {
  int xLength=LEDsize;
  int yLength=LEDsize; 
  int xLoc, yLoc;
  led() {
  }
  void setLED(int x, int y) {
    xLoc=x;
    yLoc=y;
    fill(255, 255, 255);
    ellipse(xLoc, yLoc, xLength, yLength);
  }
  void turnOn(int r, int g, int b) {
    fill(r, g, b);
    ellipse(xLoc, yLoc, xLength, yLength);
  } 
  void turnOff() {
    fill(255, 255, 255);
    ellipse(xLoc, yLoc, xLength, yLength);
  }
}

void setup() {
  size(550, 550);
  background(0);
  ellipseMode(CORNER);

  //void setPixelColor(int n,int r,int g,int b);//n=led# in strip r,g,b color values 0,255)
  led[][] pixel = new led[10][10];
  int x, y;
  for (x=0; x<10; x++) {
    for (y=0; y<10; y++) {
      pixel[x][y]= new led();
      pixel[x][y].setLED((25+(x*50)), (25 + (y*50)));
    }
  }
}
/*void draw() {
 // [row] [col]
 int i;
 for (i=0; i<10;i++){
 float x
 x=i;
 y=circlePoint(5.0,5.0,x,1.0);
 pixel[x][y].turnOn(90,78,234);
 }
 }
 */
void drawCircle() {
  int i;
  int y1[];
  for (i=0; i<10; i=i++) {
    float x1;
    x1=i;
    y1=circlePoint(5.0, 5.0, x1, 1.0);
    pixel[i][y1[0]].turnOn(90, 78, 234);
    pixel[i][y1[1]].turnOn(90, 78, 234);
  }
}
int[] circlePoint(float a, float b, float x, float r) {
  // y= b+-sqrt(r-sq(x-a)
  int[] tempy= new int[2]; 
  tempy[0]=int(b+sqrt(r-sq(x-a))); 
  tempy[1]=int(b-sqrt(r-sq(x-a))); 
  return tempy;
}

