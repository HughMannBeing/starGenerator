class star {
  int rad = 20;
  float xPos = 0;
  float yPos = 0;
  star(int rad) {
    this.rad = rad;
    this.xPos = random(0, width);
    this.yPos = random(0, height);
  }
  void show() {
    fill(255);
    ellipse(this.xPos, this.yPos, this.rad, this.rad);
  }
}