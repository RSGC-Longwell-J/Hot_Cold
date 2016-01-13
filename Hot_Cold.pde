
//variables
int G;
int LL;
int UL;
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
  //A=50;
  UL=100;
  LL=0;
  G=(UL+LL)/2;
  
  
  //booleans


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

  text(""+G, 475, 300);
}

void mousePressed() {
//Colder
  if (mouseX > 150 && mouseX < 450 && mouseY > 500 && mouseY < 750) {
    UL=G;
    G=(LL+UL)/2;
  background(255);
  fill(0);
  text("Is Your Number", 350, 200);
  text(""+G, 475, 300);
  fill(0, 0, 255);
  rect(150, 500, 300, 200);

  fill(118, 163, 255);
  text("COLDER", 220, 625);

  fill(255, 0, 0);
  rect(575, 500, 300, 200);

  fill(255, 130, 118);
  text("HOTTER", 660, 625);
}

//Hotter
if (mouseX > 575 && mouseX < 875 && mouseY > 500 && mouseY < 750) {
LL=G;
G=(LL+UL)/2;

  background(255);
  fill(0);
  text("Is Your Number", 350, 200);
  text(""+G, 475, 300);

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