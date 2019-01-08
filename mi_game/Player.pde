class player {
  boolean direction;
  int x, y;
  int speed=2;
  int speedY=0;
  int powerUp=0;
  int nbPlayer=0;

  void spawn(int nbplayer) {
    if (nbplayer==1) {
      P1active=true;
    } else {
      P2active=true;
    }
    nbPlayer=nbplayer;
    x=cameraX+3*blockSize;
    y=cameraY+11*blockSize;
  }

  void move() {
    gravity();
    moveButton();
    collisionUp();
    collisionRight();
    collisionLeft();
    onCoin();
    moveCamera();
    drawPlayer();
  }

  void drawPlayer() {
    switch(nbPlayer) {
    case 1:
      fill(255, 0, 0);
      break;
    case 2:
      fill(0, 255, 0);
      break;
    }

    switch(powerUp) {
    case 0:
      rect(x-cameraX, y-cameraY+blockSize, blockSize, blockSize);
      break;
    case 1:
      rect(x-cameraX, y-cameraY, blockSize, 2*blockSize);
      break;
    case 2:
      rect(x-cameraX, y-cameraY, blockSize, 2*blockSize);
      fill(240, 240, 240);
      noStroke();
      rect(x-cameraX, y-cameraY+blockSize-8*pixel, blockSize, 24*pixel );
      //rect(x-cameraX, y-cameraY+blockSize+8*pixel, blockSize, 8*pixel );
      break;
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
  void onCoin() {
    float floatX=x;
    int charHeight;
    if (powerUp==0) {
      charHeight=1;
    } else {
      charHeight=2;
    }
    for (int i=1; i<=charHeight; i++) {
      if (levels[currentLvl][(y/blockSize+2-i)][round(floatX/blockSize)]==5) {
        levels[currentLvl][(y/blockSize+2-i)][round(floatX/blockSize)]=0;
        coinCounter++;
      }
    }
  }
  void changePowerUp(int val) {
    powerUp+=val;
    if (powerUp>maxPowerUp) {
      powerUp=maxPowerUp;
    }
    if (powerUp<0) {
      powerUp--;
    }
  }
  void moveButton() {
    if (isGrounded()) {
      if (nbPlayer==1) {
        if (keyO) {
          speed=3;
        } else {
          speed=2;
        }
        if ((!keyA)&(!keyD)) {
        } else {
          if (keyA) {
            x-=speed*pixel;
          }
          if (keyD) {
            x+=speed*pixel;
          }
        }
        if (keyP) {
          speedY=-25;
        }
      }
      if (nbPlayer==2) {
        if (keyNum1) {
          speed=3;
        } else {
          speed=2;
        }
        if ((!keyLeft)&(!keyRight)) {
        } else {
          if (keyLeft) {
            x-=speed*pixel;
          }
          if (keyRight) {
            x+=speed*pixel;
          }
        }
        if (keyNum2) {
          speedY=-25;
        }
      }
    } else {
      if (nbPlayer==1) {
        if (keyO) {
          speed=3;
        } else {
          speed=2;
        }
        if ((!keyA)&(!keyD)) {
        } else {
          if (keyA) {
            x-=speed*pixel;
          }
          if (keyD) {
            x+=speed*pixel;
          }
        }
      }
      if (nbPlayer==2) {
        if (keyNum1) {
          speed=3;
        } else {
          speed=2;
        }
        if ((!keyLeft)&(!keyRight)) {
        } else {
          if (keyLeft) {
            x-=speed*pixel;
          }
          if (keyRight) {
            x+=speed*pixel;
          }
        }
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
  void collisionLeft() {
    float floatX=x, floatY=y;
    int block, block2=0;
    block=levels[currentLvl][round(floatY/blockSize+1.49)][x/blockSize];
    if (powerUp!=0) {
      block2=levels[currentLvl][round(floatY/blockSize+0.49)][x/blockSize];
    }

    if (floatX/blockSize>x/blockSize-0.5) {
      if (((block!=0)&(block!=5))|((block2!=0)&(block2!=5))) {
        x=x/blockSize+1;
        x=x*blockSize;
      }
    }
  }

  void collisionRight() {
    float floatX=x, floatY=y;
    int block=0, block2=0;
    block=levels[currentLvl][round(floatY/blockSize+1.49)][x/blockSize+1];
    if (powerUp!=0) {
      block2=levels[currentLvl][round(floatY/blockSize+0.49)][x/blockSize+1];
    }

    if (floatX/blockSize<x/blockSize+0.5) {
      if (((block!=0)&(block!=5))|((block2!=0)&(block2!=5))) {
        x=x/blockSize;
        x=x*blockSize;
      }
    }
  }
  void collisionUp() {
    float floatX=x, floatY=y;
    int block;
    int charHeight;
    if (powerUp==0) {
      charHeight=1;
      block=levels[currentLvl][y/blockSize+1][round(floatX/blockSize)];
    } else {
      charHeight=2;
      block=levels[currentLvl][y/blockSize][round(floatX/blockSize)];
    }
    if (speedY<0) {
      if (floatY/blockSize>y/blockSize) {
        if (block==2) {
          levels[currentLvl][y/blockSize+2-charHeight][round(floatX/blockSize)]=3;
        }
        if (block==4) {
          levels[currentLvl][y/blockSize+2-charHeight][round(floatX/blockSize)]=0;
        }
        if ((block!=0)&(block!=5)) {
          speedY=5;
          y+=speed;
        }
      }
    }
  }
}
