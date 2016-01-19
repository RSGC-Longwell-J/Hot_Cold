//variables
PImage chad1;
PImage chad2;
PImage flame;
PImage chill;
PImage happy;
int G;
int LL;
int UL;

//things that run once
void setup() {

  //background color
  background(255);

  //size of the canvas
  size(1280, 800);

  //color
  fill(0);

  //size of the text
  textSize(40);

  //text
  fill(255, 0, 213);
  text("Is Your Number", 350, 200);

  //declaring variable values
  UL=1000;
  LL=0;
  G=(UL+LL)/2;

  //Images
  chad1=loadImage("Better Chads Face.png");
  chad2=loadImage("Number 5.png");
  flame=loadImage("flame-wallpaper-1280x800.jpg");
  chill=loadImage("ws_Ice_Cold_Snowy_Water_1280x800.jpg");
  happy=loadImage("images.jpeg");

  //drawing the rectangles and their insides
  fill(0, 0, 255);
  rect(150, 500, 300, 200);

  fill(118, 163, 255);
  text("COLDER", 220, 625);

  fill(255, 0, 0);
  rect(575, 500, 300, 200);

  fill(255, 130, 118);
  text("HOTTER", 640, 625);

  fill(150, 150, 150);
  rect(950, 500, 300, 200);

  fill(200, 200, 200);
  text("Correct", 1030, 625);

  //Legend
  fill(2, 222, 14);
  text("How to play", 950, 100);

  fill(250, 0, 0);
  text("Hotter = Higher", 950, 200);

  fill(0, 0, 250);
  text("Colder = Lower", 950, 300);
}

void draw() {
  fill(255, 0, 213);
  text(""+G, 475, 300);
  noStroke();
}

void mousePressed() {
  //Colder
  if (mouseX > 150 && mouseX < 450 && mouseY > 500 && mouseY < 700) {
    UL=G;
    G=(LL+UL)/2;
    background(chill);

    //text
    fill(255, 0, 213);
    text("Is Your Number", 350, 200);

    fill(0, 0, 255);
    rect(150, 500, 300, 200);

    fill(118, 163, 255);
    text("COLDER", 220, 625);

    fill(255, 0, 0);
    rect(575, 500, 300, 200);

    fill(255, 130, 118);
    text("HOTTER", 640, 625);

    fill(150, 150, 150);
    rect(950, 500, 300, 200);

    fill(200, 200, 200);
    text("Correct", 1030, 625);

    //Legend
    fill(2, 222, 14);
    text("How to play", 950, 100);

    fill(250, 0, 0);
    text("Hotter = Higher", 950, 200);

    fill(0, 0, 250);
    text("Colder = Lower", 950, 300);
  }

  //Hotter
  if (mouseX > 575 && mouseX < 875 && mouseY > 500 && mouseY < 700) {
    LL=G;
    G=(LL+UL)/2;
    background(flame);

    //text
    fill(255, 0, 213);
    text("Is Your Number", 350, 200);

    fill(0, 0, 255);
    rect(150, 500, 300, 200);

    fill(118, 163, 255);
    text("COLDER", 220, 625);

    fill(255, 0, 0);
    rect(575, 500, 300, 200);

    fill(255, 130, 118);
    text("HOTTER", 640, 625);

    fill(150, 150, 150);
    rect(950, 500, 300, 200);

    fill(200, 200, 200);
    text("Correct", 1030, 625);

    //Legend
    fill(2, 222, 14);
    text("How to play", 950, 100);

    fill(250, 0, 0);
    text("Hotter = Higher", 950, 200);

    fill(0, 0, 250);
    text("Colder = Lower", 950, 300);
  }

  if (mouseX > 950 && mouseX < 1250 && mouseY > 500 && mouseY < 700) {
    background(255);
    textSize(40);
    image(happy,0,0,width*1,height*1);
    image(chad1, 850, 300, width/4, height/4);
    image(chad2, 250, 300);
    text("Game Over", 550, 400);
    noLoop();
  }
}