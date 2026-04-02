//Eric Li
//Processing 11
//Apr 2, 2026
//Slider (Checkpoint 3)

//Color Pallette
color lightCyan = #caf0f8;
color mediumSkyBlue = #90e0ef;
color darkerBlue = #0096c7;
color darkestBlue = #03045e;
color paleYellow = #ffe6a7;
color blueHue = #a2d2ff;

float sliderX;

void setup (){
  size(800,500);
  strokeWeight(5);
  stroke(darkestBlue);
  fill(lightCyan);
  sliderX = 400;
}

void draw() {
  background(paleYellow);
  
  line(100,300,700,300);
  circle(sliderX,300,50);
}

void mouseReleased() {
  if(mouseX >100 && mouseX < 700 && mouseY > 275 && mouseY < 325){
    sliderX = mouseX;
  }
}
