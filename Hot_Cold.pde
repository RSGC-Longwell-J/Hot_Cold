
//variables
int X;
int Y;
int V;
int Q;
int A;
boolean Higher;
boolean Colder;

//things that run once
void setup() {
  //background color
  background(255);

  //size of the canvas
  size(1000, 1000);

  //color
  fill(0);

  //size of the text
  textSize(40);

  //text
  text("Is Your Number", 350, 200);

  //declaring variable values
  A=int(random(0, 100));
  Y=0;
  X=100;
  V=0;
  Q=100;
  //booleans
  Higher=false;
  Colder=false;

  //drawing the rectangles and their insides
  fill(0, 0, 255);
  rect(150, 500, 300, 200);

  fill(118, 163, 255);
  text("COLDER", 220, 625);

  fill(255, 0, 0);
  rect(575, 500, 300, 200);

  fill(255, 130, 118);
  text("HOTTER", 660, 625);
  
}

void draw() {

  text(""+A, 475, 300);
}

void mousePressed() {

  if (mouseX > 150 && mouseX < 450 && mouseY > 500 && mouseY < 750) {
    Colder=true;
    Q=X;
    X=int(random(V , A));
    A=X;
    background(255);
    fill(0);
    text("Is Your Number", 350, 200);
    text(""+A, 475, 300);
    fill(0, 0, 255);
    rect(150, 500, 300, 200);

    fill(118, 163, 255);
    text("COLDER", 220, 625);

    fill(255, 0, 0);
    rect(575, 500, 300, 200);

    fill(255, 130, 118);
    text("HOTTER", 660, 625);
    Colder=false;
  }

  if (mouseX > 575 && mouseX < 875 && mouseY > 500 && mouseY < 750) {
    if (!Higher) {
      Higher=true;
      V=Y;
      Y=int(random(A, Q));
      A=Y;
      background(255);
      fill(0);
      text("Is Your Number", 350, 200);
      text(""+A, 475, 300);
      Higher=false;

      fill(0, 0, 255);
      rect(150, 500, 300, 200);

      fill(118, 163, 255);
      text("COLDER", 220, 625);

      fill(255, 0, 0);
      rect(575, 500, 300, 200);

      fill(255, 130, 118);
      text("HOTTER", 660, 625);
    }
  }
}