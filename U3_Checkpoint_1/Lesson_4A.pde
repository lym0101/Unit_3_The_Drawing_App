//Eric Li
//Processing 11
//Lesson 4A

//Color Pallette
color lightCyan = #caf0f8;
color mediumSkyBlue = #90e0ef;
color darkerBlue = #0096c7;
color darkestBlue = #03045e;
color paleYellow = #ffe6a7;
color blueHue = #a2d2ff;
//variable for color selection
color selectedColor;

void setup (){
  size(800,800);
  strokeWeight(3);
  stroke(darkestBlue);
  selectedColor = darkerBlue;
}

void draw() {
  background(paleYellow);
  
  //buttons
  //light cyan button
  tactile(200,650,50);
  fill(lightCyan);
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
    
  
  
