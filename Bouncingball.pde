int ballX;
int ballY;
int ballXV = 1;
int ballYV = 1;
float speedMOD;
int ballDIM = 50;

void setup() {
  fullScreen();
  ballX = width/2;
  ballY = height/2;
  speedMOD = 10;
  ellipseMode(CENTER);
  noStroke();
}

void draw() {
  background(50);
  ellipse(ballX, ballY, ballDIM, ballDIM);
  if (ballX <= 0 + ballDIM/2  || ballX >= width - ballDIM/2) {
    ballXV = ballXV * -1;
  }
  if (ballY <= 0 + ballDIM/2 || ballY >= height - ballDIM/2) {
    ballYV = ballYV * -1;
  }
  ballX += ballXV * speedMOD;
  ballY += ballYV * speedMOD;
}