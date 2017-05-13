int numStars = 20;
star[] stars = new star[numStars];
shootingStar scott = new shootingStar(500, 500);

void setup() {
  size(500, 500);
  background(0);
  for (int i = 0; i < numStars; i++) {
    stars[i] = new star(10);
  }
}

void draw() {
  background(0);
  scott.update();
  for (int i = 0; i < numStars; i++) {
    stars[i].show();
  }
}