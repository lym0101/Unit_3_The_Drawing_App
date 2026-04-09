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

// for background and outlines
color darkestBlue = #03045e;
color paleYellow = #ffe6ac;
color blueHue = #a2d2ff;
color selectedColor;

float sliderY;
float radius;

void setup () {
  size(800,800);
  strokeWeight(5);
  stroke(black);
  fill(black);
  sliderY = 400;
  radius = 0;
  selectedColor = black;
}

void draw() {
  background(white);
  
  //buttons
  //light cyan button
  tactile(200,650,50);
  fill(blueHue);
  circle(200, 650, 100);
  
  //medium sky blue button
  tactile(400,650,50);
  fill(mediumSkyBlue);
  circle(400, 650, 100);
  
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
    selectedColor = lightCyan;
  }
  //medium sky blue button
  if(dist(400,650,mouseX,mouseY) < 50) {
    selectedColor = mediumSkyBlue;
  }
  //darker blue button
  if(dist(600,650,mouseX,mouseY) < 50) {
    selectedColor = darkerBlue;
  }
}
  
