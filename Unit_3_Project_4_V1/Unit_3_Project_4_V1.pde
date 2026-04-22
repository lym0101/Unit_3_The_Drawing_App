//Eric Li
//Processing 11
//Project 3 V1 Painting APP

pixelDensity(1);

PImage lemon;
PImage blackHole;

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

float sliderX;
float radius;
float weight;

void setup () {
  background(grey);
  size(1000,800);
  strokeWeight(3);
  stroke(black);
  fill(black);
  sliderX = 940;
  radius = 0;
  weight = 0.25;
  selectedColor = black;
  
  lemon = loadImage("Lemon Transparent.png");
  blackHole = loadImage("Black Hole Transparent.png");
}

void draw() {
//the 2 side bars
  fill(paleYellow,180);
  stroke(black);
  strokeWeight(3);
  rect(850,0,150,800);
  
  //Section labels and dividers
  textAlign(CENTER, CENTER);
  textSize(13);
  fill(darkestBlue);
  noStroke();

  // Colours section
  text("Colours", 925, 12);
  stroke(darkestBlue); 
  strokeWeight(3);

  // Selected section
  stroke(darkestBlue); 
  strokeWeight(3);
  line(850, 278, 1000, 278);
  noStroke(); 
  fill(darkestBlue);
  text("Selected Color\nand\nStroke Weight", 925, 310);

  // Size section
  stroke(darkestBlue); 
  strokeWeight(3);
  line(850, 430, 1000, 430);
  noStroke(); 
  fill(darkestBlue);
  text("Size", 925, 442);

  // Stamps section
  stroke(darkestBlue); 
  strokeWeight(3);
  line(850, 530, 1000, 530);
  noStroke(); 
  fill(darkestBlue);
  text("Stamps", 925, 545);
  
  // White backgrounds for stamps
  fill(255);
  stroke(black);
  rect(860, 560, 60, 60); // left stamp slot
  rect(930, 560, 60, 60); // right stamp slot
  
  // Draw the images inside the toolbar
  image(lemon, 860, 555, 60, 60);
  image(blackHole, 930, 560, 60, 60);
  
  //the slider (horizonal)
  fill(black);
  stroke(black);
  strokeWeight(3);
  line(870, 490, 980, 490);
  circle(sliderX, 490, 15);
  radius = map(sliderX,870,980,1,40);
  
  strokeWeight(3);
  //buttons
  
  //black button
  tactile(890, 40, 30);
  fill(black);
  circle(890, 40, 30);
  
  //white button
  tactile(965, 40, 30);
  fill(white);
  circle(965, 40, 30);
  
  //bright red button
  tactile(890, 90, 30);
  fill(brightRed);
  circle(890, 90, 30);
  
  //warm orange button
  tactile(965, 90, 30);
  fill(warmOrange);
  circle(965, 90, 30);
  
  //warm yellow button
  tactile(965, 140, 30);
  fill(warmYellow);
  circle(965, 140, 30);
  
  //pink button
  tactile(890, 140, 30);
  fill(pink);
  circle(890, 140, 30);
  
  //darker blue button
  tactile(965, 190, 30);
  fill(darkerBlue);
  circle(965, 190, 30);
  
  //dark cyan button
  tactile(890, 190, 30);
  fill(darkCyan);
  circle(890, 190, 30);
  
  //purple button
  tactile(965, 240, 30);
  fill(purple);
  circle(965, 240, 30);
  
   //neon green button
  tactile(890, 240, 30);
  fill(neonGreen);
  circle(890, 240, 30);
  
  //indicator
  stroke(darkestBlue);
  strokeWeight(3);
  fill(selectedColor);
  circle(925,375,50);
  noStroke();
  fill(black);
  circle(925, 375, radius);
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
  if (dist(890, 40,mouseX,mouseY) < 30) {
    selectedColor = black;
  }
  //medium sky blue button
  if(dist(965, 40,mouseX,mouseY) < 30) {
    selectedColor = white;
  }
  //darker blue button
  if(dist(890, 90,mouseX,mouseY) < 30) {
    selectedColor = brightRed;
  }
  //darker blue button
  if(dist(965, 90,mouseX,mouseY) < 30) {
    selectedColor = warmOrange;
  }
  //darker blue button
  if(dist(890, 140,mouseX,mouseY) < 30) {
    selectedColor = pink;
  }
  //darker blue button
  if(dist(965, 140,mouseX,mouseY) < 30) {
    selectedColor = warmYellow;
  }
  //darker blue button
  if(dist(890, 190,mouseX,mouseY) < 30) {
    selectedColor = darkCyan;
  }
  //darker blue button
  if(dist(965, 190,mouseX,mouseY) < 30) {
    selectedColor = darkerBlue;
  }
  //darker blue button
  if(dist(890, 240,mouseX,mouseY) < 30) {
    selectedColor = neonGreen;
  }
  //darker blue button
  if(dist(965, 240,mouseX,mouseY) < 30) {
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
   if(mouseX > 870 && mouseX < 980 && mouseY > 480 && mouseY < 500){
    sliderX = mouseX;
    weight = map(sliderX,870,980,0.25,8);
   }
}
  
