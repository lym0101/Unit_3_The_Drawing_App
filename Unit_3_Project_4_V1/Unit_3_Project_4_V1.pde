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
  background(grey);
  size(1000,800);
  strokeWeight(3);
  stroke(black);
  fill(black);
  sliderY = 425;
  radius = 0;
  selectedColor = black;
}

void draw() {
//the 2 side bars
  fill(paleYellow,180);
  rect(850,0,150,800);
  rect(0,650,850,150);

//the slider (vertical)
  fill(paleYellow);
  line(925,350,925,500);
  circle(925,sliderY,30);
  circle(925, 580, radius);
  radius = map(sliderY,350,500,0,70);
  
  //buttons
  //black button
  tactile(900, 40, 30);
  fill(black);
  circle(900, 40, 30);
  
  //white button
  tactile(960, 40, 30);
  fill(white);
  circle(960, 40, 30);
  
  //light cyan button
  tactile(900, 90, 30);
  fill(brightRed);
  circle(900, 90, 30);
  
  //light cyan button
  tactile(960, 90, 30);
  fill(brightRed);
  circle(960, 90, 30);
  
  //medium sky blue button
  tactile(960, 140, 30);
  fill(warmOrange);
  circle(960, 140, 30);
  
  //light cyan button
  tactile(900, 140, 30);
  fill(warmYellow);
  circle(900, 140, 30);
  
  //medium sky blue button
  tactile(960, 190, 30);
  fill(pink);
  circle(960, 190, 30);
  
  //light cyan button
  tactile(900, 190, 30);
  fill(darkerBlue);
  circle(900, 190, 30);
  
  //medium sky blue button
  tactile(960, 240, 30);
  fill(neonCyan);
  circle(960, 240, 30);
  
   //light cyan button
  tactile(900, 240, 30);
  fill(neonGreen);
  circle(900, 240, 30);
  
  //indicator
  stroke(darkestBlue);
  fill(selectedColor);
  square(910, 300, 40);
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
  if (dist(900, 40,mouseX,mouseY) < 30) {
    selectedColor = black;
  }
  //medium sky blue button
  if(dist(900, 60,mouseX,mouseY) < 30) {
    selectedColor = white;
  }
  //darker blue button
  if(dist(900, 90,mouseX,mouseY) < 30) {
    selectedColor = black;
  }
  //darker blue button
  if(dist(960, 90,mouseX,mouseY) < 30) {
    selectedColor = black;
  }
  //darker blue button
  if(dist(900, 140,mouseX,mouseY) < 30) {
    selectedColor = black;
  }
  //darker blue button
  if(dist(960, 140,mouseX,mouseY) < 30) {
    selectedColor = black;
  }
  controlSlider();
}

void mouseDragged() {
  controlSlider();
  line(mouseX,mouseY,mouseX+1, mouseY+1);
}

void controlSlider() {
   if(mouseX >895 && mouseX < 955 && mouseY > 350 && mouseY < 500){
    sliderY = mouseY;
   }
}
  
