int X;
int Y;
boolean Higher;
boolean Colder;

void setup() {

  background(255);

  size(1000, 1000);

  fill(0);

  textSize(40);

  text("Is Your Number", 400, 200);

  X=int(random(0, 100));
  Y=int(random(0, 100));

  Higher=false;
  Colder=false;

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

  text(""+X, 475, 300);



}

void mousePressed() {

  if (mouseX < 150 && mouseX > 450 && mouseY < 500 && mouseY > 750) {
    Colder=true;
    X=int(random(0, X));
    background(255);
    fill(0);
    text("Is Your Number", 400, 200);
    text(""+X, 475, 300);
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

  if (mouseX < 150 && mouseX > 450 && mouseY < 500 && mouseY > 750) {
    if (!Higher) {
    Higher=true;
    X=int(random(X, 100));
    background(255);
    text("Is Your Number", 400, 200);
    text(""+X, 475, 300);
    Higher=false;
  }
    
  }
  
  
}