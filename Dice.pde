int sum = 0;
void setup()
{
  background(#7C415A);
  size(500, 600);
  noLoop();
}
void draw() {
  for (int y = 20; y < 500; y += 81){
    for (int x = 20; x < 500; x += 81) {
      Die a = new Die(x, y);
      a.roll();
      a.show();
    }
  }
}
void mousePressed()
{
  sum = 0;
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dots;

  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    dots = (int)(Math.random()*6)+1;
  }
  void show()
  {
    stroke(0);
    sum = sum + dots;
    //die base
    beginShape();
    curveVertex(myX, myY+10);
    curveVertex(myX, myY+10);
    curveVertex(myX+10, myY);
    curveVertex(myX+40, myY);
    curveVertex(myX+50, myY+10);
    curveVertex(myX+50, myY+40);
    curveVertex(myX+40, myY+50);
    curveVertex(myX+10, myY+50);
    curveVertex(myX, myY+40);
    curveVertex(myX, myY+10);
    curveVertex(myX, myY+10);
    endShape();
    fill(0, 0, 0);
    //one dot
    if (dots == 1) {
      ellipse(myX+25, myY+25, 7, 7);
    }
    //two dots
    if (dots == 2) {
      ellipse(myX+13, myY+13, 7, 7);
      ellipse(myX+37, myY+37, 7, 7);
    }
    //three dots
    if (dots == 3) {
      ellipse(myX+13, myY+13, 7, 7);
      ellipse(myX+37, myY+37, 7, 7);
      ellipse(myX+25, myY+25, 7, 7);
    }
    //four dots
    if (dots == 4) {
      ellipse(myX+13, myY+13, 7, 7);
      ellipse(myX+37, myY+13, 7, 7);
      ellipse(myX+13, myY+37, 7, 7);
      ellipse(myX+37, myY+37, 7, 7);
    }
    //five dots
    if (dots == 5) {
      ellipse(myX+13, myY+13, 7, 7);
      ellipse(myX+37, myY+13, 7, 7);
      ellipse(myX+25, myY+25, 7, 7);
      ellipse(myX+13, myY+37, 7, 7);
      ellipse(myX+37, myY+37, 7, 7);
    }
    //six dots
    if (dots == 6) {
      ellipse(myX+13, myY+13, 7, 7);
      ellipse(myX+37, myY+13, 7, 7);
      ellipse(myX+13, myY+25, 7, 7);
      ellipse(myX+37, myY+25, 7, 7);
      ellipse(myX+13, myY+37, 7, 7);
      ellipse(myX+37, myY+37, 7, 7);
    }
    fill(#7C415A);
    noStroke();
    rect(240, 540, 70, 20);
    fill(255, 255, 255);
    text("Sum: " + sum, 240, 550);
  }
}
