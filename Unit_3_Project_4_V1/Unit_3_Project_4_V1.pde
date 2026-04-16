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
color darkCyan = #008B8B;
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
float weight;

void setup () {
  background(grey);
  size(1000,800);
  strokeWeight(3);
  stroke(black);
  fill(black);
  sliderY = 425;
  radius = 0;
  weight = 0.25;
  selectedColor = black;
}

void draw() {
//the 2 side bars
  fill(paleYellow,180);
  stroke(black);
  rect(850,0,150,800);
  rect(0,650,850,150);

//the slider (vertical)
  fill(paleYellow);
  line(925,350,925,500);
  circle(925,sliderY,30);
  circle(925, 580, radius);
  radius = map(sliderY,350,500,0,70);
  
  strokeWeight(3);
  //buttons
  //black button
  tactile(900, 40, 30);
  fill(black);
  circle(900, 40, 30);
  
  //white button
  tactile(960, 40, 30);
  fill(white);
  circle(960, 40, 30);
  
  //bright red button
  tactile(900, 90, 30);
  fill(brightRed);
  circle(900, 90, 30);
  
  //warm orange button
  tactile(960, 90, 30);
  fill(warmOrange);
  circle(960, 90, 30);
  
  //warm yellow button
  tactile(960, 140, 30);
  fill(warmYellow);
  circle(960, 140, 30);
  
  //pink button
  tactile(900, 140, 30);
  fill(pink);
  circle(900, 140, 30);
  
  //darker blue button
  tactile(960, 190, 30);
  fill(darkerBlue);
  circle(960, 190, 30);
  
  //dark cyan button
  tactile(900, 190, 30);
  fill(darkCyan);
  circle(900, 190, 30);
  
  //purple button
  tactile(960, 240, 30);
  fill(purple);
  circle(960, 240, 30);
  
   //neon green button
  tactile(900, 240, 30);
  fill(neonGreen);
  circle(900, 240, 30);
  
  //indicator
  stroke(darkestBlue);
  strokeWeight(3);
  fill(selectedColor);
  circle(930,295,50);
  fill(black);
  circle(930, 295, radius/5);
}
  
void tactile(int x, int y, int r) {
  if (dist(x,y,mouseX,mouseY) < r) {
    stroke(blueHue);
    strokeWeight(3);
  } else {
    stroke(darkestBlue);
    strokeWeight(3);
  }
}
  
void mouseReleased() {
  //light cyan button
  if (dist(900, 40,mouseX,mouseY) < 30) {
    selectedColor = black;
  }
  //medium sky blue button
  if(dist(960, 40,mouseX,mouseY) < 30) {
    selectedColor = white;
  }
  //darker blue button
  if(dist(900, 90,mouseX,mouseY) < 30) {
    selectedColor = brightRed;
  }
  //darker blue button
  if(dist(960, 90,mouseX,mouseY) < 30) {
    selectedColor = warmOrange;
  }
  //darker blue button
  if(dist(900, 140,mouseX,mouseY) < 30) {
    selectedColor = pink;
  }
  //darker blue button
  if(dist(960, 140,mouseX,mouseY) < 30) {
    selectedColor = warmYellow;
  }
  //darker blue button
  if(dist(900, 190,mouseX,mouseY) < 30) {
    selectedColor = darkCyan;
  }
  //darker blue button
  if(dist(960, 190,mouseX,mouseY) < 30) {
    selectedColor = darkerBlue;
  }
  //darker blue button
  if(dist(900, 240,mouseX,mouseY) < 30) {
    selectedColor = neonGreen;
  }
  //darker blue button
  if(dist(960, 240,mouseX,mouseY) < 30) {
    selectedColor = purple;
  }
  controlSlider();
}

void mouseDragged() {
  controlSlider();
  stroke(selectedColor);
  strokeWeight(radius);
  line(pmouseX,pmouseY,mouseX,mouseY);
  //line(mouseX,mouseY,mouseX+1, mouseY+1);
}

void controlSlider() {
  strokeWeight(3);
   if(mouseX >895 && mouseX < 955 && mouseY > 350 && mouseY < 500){
    sliderY = mouseY;
    weight = map(radius/5,350,500,0.25,8);
   }
}
  
