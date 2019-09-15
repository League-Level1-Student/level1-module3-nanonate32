int x = 300;
  int y = 1;
   int birdYVelocity = 5;
   int gravity = 1;
   void mousePressed(){
    y=y - 100;
   }
void setup(){
  size(600,600);
}
void draw(){
  background(255,255,255);
  fill(#0D931E);
  stroke(#A76140);
  ellipse(x,y,50,50);
  fill(#2F35A0);
  rect(111,167,155,100);
  
  y=y+birdYVelocity;

}
