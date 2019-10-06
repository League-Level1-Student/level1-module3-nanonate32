int frogX;
int frogY;
int frogRadius = 25;
void setup() {

  size(800, 600);
  frogX = width/2;
  frogY =height/2;
}
void draw() {
  background(#8CA9B4);
  fill(#1CAF49);
  ellipse(frogX, frogY, frogRadius*2, frogRadius*2);
}
void keyPressed() {

  if (key == CODED) {
    if (keyCode == UP)
    { 
      frogY -= 50;
      //Frog Y position goes up
    } else if (keyCode == DOWN) {
      frogY +=50;

      //Frog Y position goes down
    } else if (keyCode == RIGHT) {

      frogX += 50;   //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      frogX -=50;     //Frog X position goes left
    }
    bounds();
  }
}
void bounds() {
  if (frogY >height-frogRadius) {
    frogY = height-frogRadius;
  }
  if (frogY<frogRadius) {
    frogY = frogRadius;
  }
  if (frogX >width-frogRadius) {
    frogX = width-frogRadius;
  }
  if (frogX<frogRadius) {
    frogX = frogRadius;
  }
}
class Car {
  int x;
  int y;
  int size;
  int speed;
  Car(int x, int y, int size, int speed) {
   this.x=x; 
   this.y=y;
   this.size=size;
   this.speed=speed;
  }
} 
