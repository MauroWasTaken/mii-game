class Mob {
  int x, y;
  int speed=2;
  int speedY=0;
  int type=0;
  void spawn(int tempType, int slot) {
    x=10*blockSize;
    y=9*blockSize;
    type=tempType;
    if (type==1) {
      speed=-1;
    }
    switch (slot) {
    case 1:
      M1active=true;
      break;
    case 2:
      M2active=true;
      break;
    case 3:
      M3active=true;
      break;
    }
  }
  void behavior() {
    collisionplayer();
    gravity();
    collisionLeft();
    collisionRight();
    x+=speed;
    drawMob();
  }
  void drawMob() {
    fill(139, 69, 19);
    rect(x-cameraX, y-cameraY+blockSize, blockSize, blockSize);
  }
  void collisionLeft() {
    float floatX=x, floatY=y;
    int block;
    block=levels[currentLvl][round(floatY/blockSize+1.49)][x/blockSize];
    if (floatX/blockSize>x/blockSize-0.5) {
      if ((block!=0)&(block!=5)) {
        x=x/blockSize+1;
        x=x*blockSize;
        speed=-speed;
      }
    }
  }

  void collisionRight() {
    float floatX=x, floatY=y;
    int block=0;
    block=levels[currentLvl][round(floatY/blockSize+1.49)][x/blockSize+1];
    if (floatX/blockSize<x/blockSize+0.5) {
      if ((block!=0)&(block!=5)) {
        x=x/blockSize;
        x=x*blockSize;
        speed=-speed;
      }
    }
  }
  void gravity() {
    int gravityForce=1;
    speedY+=gravityForce;
    y+=speedY;
    if (isGrounded()) {
      if (speedY>0) {
        speedY=0;
        y=(y-cameraY)/blockSize;
        y=y*blockSize+cameraY;
      }
    }
  }
  boolean isGrounded() {
    int tempUnder=under();
    if ((tempUnder==0)|(tempUnder==5)) {
      return false;
    } else {
      return true;
    }
  }
  int under() {
    float floatX=x;
    int charHeight=2;

    return levels[currentLvl][y/blockSize+charHeight][round(floatX/blockSize)];
  } 
  void collisionplayer() {
    float playerX, playerY;
    if (P1active) {
      playerX=P1.x;
      playerY=P1.y;
      if (((playerY>=y-blockSize)&(playerY<=y-0.50*blockSize))&((playerX>=x-15*pixel)&(playerX<=x+15*pixel))) {
        killMob(1);
      }
    }
    if (P2active) {
      playerX=P2.x;
      playerY=P2.y;
      if (((playerY>=y-blockSize)&(playerY<=y-0.50*blockSize))&((playerX>=x-15*pixel)&(playerX<=x+15*pixel))) {
        killMob(1);
      }
    }
  }
  void killMob(int slot) {
    switch (slot) {
    case 1:
      M1active=false;
      M1=null;
      break;
    case 2:
      M2active=false;
      M2=null;
      break;
    case 3:
      M3active=false;
      M3=null;
      break;
    }
  }
}
