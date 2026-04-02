//Eric Li
//Processing 11
//Lesson 4E

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
  tactile(75, 650, 100, 150);
  fill(lightCyan);
  rect(75, 650, 150, 100);
  
  //medium sky blue button
  tactile(325, 650, 100, 150);
  fill(mediumSkyBlue);
  rect(325, 650, 150, 100);
  
   //darker blue button
  tactile(575, 650, 100, 150);
  fill(darkerBlue);
  rect(575, 650, 150, 100);
  
  //indicator
  stroke(darkestBlue);
  fill(selectedColor);
  square(200, 100, 400);
}
  
void tactile(int x, int y, int w, int h) {
  if(mouseX > x && mouseX < x+w && mouseY < y+h && mouseY > y) {
    stroke(blueHue);
  } else {
    stroke(darkestBlue);
  }
}

void mouseReleased() {
  if(mouseX > 75 && mouseX < 225 && mouseY < 750 && mouseY > 650) {
    selectedColor = lightCyan;
  }
  
  if(mouseX > 325 && mouseX < 475 && mouseY < 750 && mouseY > 650) {
    selectedColor = mediumSkyBlue;
  }
  
  if(mouseX > 575 && mouseX < 725 && mouseY < 750 && mouseY > 650) {
    selectedColor = darkerBlue;
  }
}
    
  
  
