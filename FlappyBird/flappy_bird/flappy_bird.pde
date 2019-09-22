int x = 300;
int y = 1;
int birdYVelocity = 0;
int gravity = 1;
int pipeX = 600;
boolean end = false;
int UpperPipeHeight = 50;
int LowerPipeHeight = 1000;
int score = 0;
void mousePressed() {
  birdYVelocity = -15;
}
void setup() {
  size(600, 600);
}
void draw() {
  background(255, 255, 255);
  fill(#0D931E);
  stroke(#A76140);
  ellipse(x, y, 50, 50);
  fill(#2F35A0);
  rect(pipeX, 0, 100, UpperPipeHeight);
  fill(#E84B94);
  rect(pipeX, UpperPipeHeight + 200, 100, LowerPipeHeight);
  rect(0, 500, 600, 100);
  birdYVelocity += gravity;
  y=y+birdYVelocity;
  pipeX = pipeX - 5;
  text("You have " + score + " sausage",100,100);
  if (pipeX==x) {
    score +=1;
  }
  teleportPipes();
  if (intersectsPipes()) {
    exit();
  }
}
void teleportPipes() {
  if (pipeX<=0) {
    pipeX = 600;
    UpperPipeHeight = (int) random(100, 400);
  }
}
boolean intersectsPipes() { 
  if (y < UpperPipeHeight && x > pipeX && x < (pipeX+100)) {
    return true;
  } else if (y>LowerPipeHeight && x > pipeX && x < (pipeX+100)) {
    return true;
  } else if (y>500) {
    return true;
  } else { 
    return false;
  }
}
