PImage bg;

float[] procrasinatedHours = {4, 5, 6, 3, 5, 5, 4, 6, 5, 4, 3.5, 3, 4, 5, 3, 4, 5, 6, 5, 4, 6, 4, 3, 5, 4};
float[] sleptHours = {8, 7, 6, 7.5, 7.5, 5, 7, 8, 9, 7.5, 8, 8, 7, 5, 9, 7.5, 8, 8, 9, 8, 6, 8, 5, 6, 6};
float[] revisionHours = {3, 2, 4, 1.5, 2, 1.5, 2, 3.5, 3, 2.5, 3, 4, 2, 3, 2, 3, 1.5, 2, 2, 2.5, 3, 2, 1.5, 2, 3};
float[] gymHours = {1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5};
float[] travelHours = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};


int currentDay = 0;
int lastChange = 0;
int dayDuration = 2000;

Day Day1 = new Day(4, 8, 3, 1, 1); //first object

void setup () {
  size(1980, 1200);
  fill(200);
  textAlign(CENTER, CENTER);
  bg = loadImage("sunnyday.jpg");
  println("Length procrasinatedHours: " + procrasinatedHours.length);
}

void draw() {
  tint(220);
  image(bg, 0, 0, width, height);
  noTint();

  for (int i = 0; i< revisionHours.length; i++) {
    float gameDiameter = procrasinatedHours[i] * 5;
    float sleepDiameter = sleptHours[i] * 5;
    float studyDiameter = revisionHours[i] * 5;
    float gymDiameter = gymHours[i] * 9;
    float travelDiameter = travelHours[i] * 8;

    fill(255, 255, 0);//game
    ellipse(50 + i * 78, 950 - sin(i * PI / 23) * 750, gameDiameter, gameDiameter);
    fill(255, 0, 0);// sleep
    ellipse(50 + i * 78, 900 - sin(i * PI / 23) * 750, sleepDiameter, sleepDiameter);
    fill(0, 255, 0); // study
    ellipse(50 + i * 78, 1000 - sin(i * PI / 23) * 750, studyDiameter, studyDiameter);
    fill(0, 0, 255); // gym
    ellipse(50 + i * 78, 1050 - sin(i * PI / 23) * 750, gymDiameter, gymDiameter);
    fill(128, 0, 200); // travel
    ellipse(50 + i * 78, 1100 - sin(i * PI / 23) * 750, travelDiameter, travelDiameter);
  }
  for (int i = 0; i < revisionHours.length; i++) {

    if (mouseX > 50 + i * 78 - 20 &&
      mouseX < 50 + i * 78 + 20 &&
      mouseY > 900 - sin(i * PI / 23) * 750 - 20 &&
      mouseY < 900 - sin(i * PI / 23) * 750 + 20) {

      fill(255);
      text("Day " + (i + 1), mouseX, mouseY - 20);
    }
  }
}
