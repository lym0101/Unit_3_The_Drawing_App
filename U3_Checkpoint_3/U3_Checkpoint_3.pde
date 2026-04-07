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

float sliderY;
float radius;

void setup () {
  size(800,800);
  strokeWeight(5);
  stroke(darkestBlue);
  fill(lightCyan);
  sliderY = 400;
  radius = 0;
}

void draw() {
  background(paleYellow);
  line(200,100,200,700);
  circle(200,sliderY,50);
  circle(500,400,radius/2);
  radius = map(sliderY,100,700,0,650);
}

void mouseReleased() {
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
