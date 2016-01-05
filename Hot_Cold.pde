float X;
boolean Higher;
boolean Colder;

void setup(){
  
  background(255);
  
  size(1000,1000);
  
  fill(0);
  
  textSize(40);
  
  text("Is Your Number", 400, 200);
  
  X=random(0,100);
   
  Higher=false;
  Colder=false;
  
  fill(0,0,255);
  rect(150,500,300,200);
  
  fill(255,0,0);
  rect(650,500,300,200);
}

void draw(){
  
text(""+X,475,300);


if(keyPressed){
  if (key == 'h'){
    if(!Higher){
  Higher=true;
  X=random(X,100);
  background(255);
   text("Is Your Number", 400, 200);
   text(""+X,475,300);
   Higher=false;
    }
  }
}

if(keyPressed){
  if (key == 'c'){
    if(!Colder){
  Colder=true;
  X=random(0,X);
  background(255);
   text("Is Your Number", 400, 200);
   text(""+X,475,300);
   Colder=false;
    }
  }
}

}