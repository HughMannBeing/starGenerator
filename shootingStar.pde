class shootingStar {
  float xVel = 0;
  float yVel = 0;
  float xPosition = 0;
  float yPosition = 0;
  float targetX = 0;
  float targetY = 0;
  int screenW = 500;
  int screenH = 500;
  shootingStar(int screenW, int screenH) {
    this.screenW = screenW;
    this.screenH = screenH;
    int startingState = (int)random(0, 3);
    switch (startingState) {
      case 0:
      //Start on the left side of the screen
        xPosition = 0;
        yPosition = random(0, screenH);
        targetX = this.screenW;
        targetY = random(0, this.screenH);
        break;
      case 1:
      //Start on the right side of the screen
        xPosition = this.screenW;
        yPosition = random(0, screenH);
        targetX = 0 ;
        targetY = random(0, this.screenH);
        break;
      case 2:
      //Start on the bottom of the screen
        yPosition = 0;
        xPosition = random(0, screenW);
        targetY = this.screenH;
        targetX = random(0, this.screenW);
        break;
      case 3:
      //Start at the top of the screen
        yPosition = this.screenH;
        xPosition = random(0, screenW);
        targetY = 0;
        targetX = random(0, this.screenW);
        break;
      default:
        print("Randoms numbers aren't working");
        break;
    }
    float time = random(30, 45);
    yVel = (targetY - yPosition) / time;
    xVel = (targetX - xPosition) /time;
    
  }
  void update() {
    xPosition += xVel;
    yPosition += yVel;
    fill(255);
    ellipse(xPosition, yPosition, 60, 60);
    //ellipse(targetX, targetY, 30, 30);
    if (abs(xPosition - targetX) < 15 && abs(yPosition - targetY) < 15) {
      println("Finished");
    }
    
  }
}