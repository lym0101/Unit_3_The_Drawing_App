//Eric Li
//Processing 11
//Lesson 4A

//Color Pallette
color lightCyan = #caf0f8;
color mediumSkyBlue = #90e0ef;
color darkerBlue = #0096c7;
color darkererBlue = #0077b6;
color darkestBlue = #03045e;
color paleYellow = #ffe6a7;

void setup (){
  size(800,800);
  strokeWeight(3);
  stroke(darkestBlue);
}

void draw() {
  background(paleYellow);
  
  //buttons
  fill(lightCyan);
  circle(150, 150, 100);
  
  fill(mediumSkyBlue);
  circle(150, 250, 100);
  
  fill(darkerBlue);
  circle(150, 350, 100);
  
  fill(darkererBlue);
  circle(150, 450, 100);
  
  
  
