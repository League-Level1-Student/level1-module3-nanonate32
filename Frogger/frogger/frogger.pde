int frogX;
int frogY;
int frogRadius = 25;
Car car;
Car bob;
void setup() {
  bob = new Car(100,100,100,10);
  car = new Car(10, 10, 10, 10);
  size(800, 600);
  frogX = width/2;
  frogY =height/2;
}
void draw() {
  background(#8CA9B4);
  fill(#1CAF49);
  ellipse(frogX, frogY, frogRadius*2, frogRadius*2);
  car.display();
  bob.display();
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
  
  void display()
  {
    fill(0, 255, 0);
    rect(x, y, size, size);
    move();
  }
  
    
 void move(){
   x+=speed;
   if(x>750){
     x=100;
   }
 }
}
