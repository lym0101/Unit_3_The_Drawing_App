//Eric Li
//Processing 11
//Lesson 4E

int toggle;

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
  toggle = 1;
}

void draw() {
  background(paleYellow);
  
  //buttons
  //light cyan button
  tactile(200,650,50);
  fill(lightCyan);
  rect(75, 650, 150, 100);
  
  //medium sky blue button
  tactile(400,650,50);
  fill(mediumSkyBlue);
  rect(325, 650, 150, 100);
  
   //darker blue button
  tactile(600,650,50);
  fill(darkerBlue);
  rect(575, 650, 150, 100);
  
  stroke(darkestBlue);
  //indicator
  fill(selectedColor);
  square(200, 100, 400);
  if (toggle > 0) {
    guidelines();
  }
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
  if(mouseX > 75 && mouseX < 225 && mouseY < 650 && mouseY > 550) {
    toggle = toggle * -1;
  }
}
    
  
  
