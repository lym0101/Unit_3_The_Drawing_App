//Eric Li
//Processing 11
//Project 3 V1 Painting APP

//Color Pallette
color brightRed = #fe3e51;
color warmOrange = #90e0ef;
color darkerBlue = #0096c7;
color warmYellow = #fed53e;
color pink = #f943c8;
color purple = #8b44f8;
color black = #000000;
color neonCyan = #49f396;
color neonGreen = #42fa45;

color white = #FFFFFF;
color grey = #D3D3D3;

// for background and outlines
color darkestBlue = #03045e;
color paleYellow = #ffe6ac;
color blueHue = #a2d2ff;
color selectedColor;

float sliderY;
float radius;

void setup () {
  size(1000,800);
  strokeWeight(3);
  stroke(black);
  fill(black);
  sliderY = 400;
  radius = 0;
  selectedColor = black;
}

void draw() {
  background(grey);
  
  fill(paleYellow,180);
  rect(850,0,150,800);
  rect(0,650,850,150);
  
  //buttons
  //light cyan button
  tactile(880, 40, 30);
  fill(blueHue);
  circle(880, 40, 30);
  
  //medium sky blue button
  tactile(930, 40, 30);
  fill(darkerBlue);
  circle(930, 40, 30);
  
   //darker blue button
  tactile(600,650,50);
  fill(darkerBlue);
  circle(600, 650, 100);
  
  stroke(darkestBlue);
  //indicator
  fill(selectedColor);
  square(200, 100, 400);
}
  
void tactile(int x, int y, int r) {
  //light cyan button
  if (dist(x,y,mouseX,mouseY) < r) {
    stroke(blueHue);
  } else {
    stroke(darkestBlue);
  }
}
  
void mouseReleased() {
  //light cyan button
  if (dist(200,650,mouseX,mouseY) < 50) {
    selectedColor = pink;
  }
  //medium sky blue button
  if(dist(400,650,mouseX,mouseY) < 50) {
    selectedColor = purple;
  }
  //darker blue button
  if(dist(600,650,mouseX,mouseY) < 50) {
    selectedColor = black;
  }
  controlSlider();
}

void mouseDragged() {
  controlSlider();
}

void controlSlider() {
   if(mouseX >175 && mouseX < 225 && mouseY > 100 && mouseY < 700){
    sliderY = mouseY;
   }
}
  
