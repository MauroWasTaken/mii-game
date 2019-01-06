player P1, P2; //<>//
boolean P1active=false, P2active=false;
int coinCounter=0;
int maxPowerUp=2;
int cameraX=0, cameraY=0;
int currentLvl=0;
int pixel=4;
int blockSize=16*pixel;
boolean keyA=false, keyD=false, keyLeft=false, keyRight=false, keyP=false, keyO=false, keyNum1=false, keyNum2=false;
int gravity=2*pixel;
int[][][] levels=
  {
  //lvl 0
  {
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 2, 0, 0, 0, 4, 2, 4, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 1, 1, 1, 0, 0, 0, 5, 5, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 1, 1, 1, 1, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  }, 
};

void setup() {
  //screen with 16 blocks of width and 15 blocks of height
  size(1024, 960);
  P1=new player();
  P1.spawn(1);
  //P2=new player();
  //P2.spawn(2);
  frameRate(60);
}

void draw() {
  P1.move();
  //P2.move();
  renderLayer1();
  P1.draw();
  //P2.draw();
  //renderHUD();
}

void keyPressed() {
  keyverification(keyCode, true);
}

void keyReleased() {
  keyverification(keyCode, false);
}

void keyverification(int k, boolean b) {
  switch(k) {
  case 65:
    keyA=b;
    break;
  case 68:
    keyD=b;
    break;
  case 37:
    keyLeft=b;
    break;
  case 39:
    keyRight=b;
    break;
  case 79:
    keyO=b;
    break;
  case 80:
    keyP=b;
    break;
  case 97:
    keyNum1=b;
    break;
  case 98:
    keyNum2=b;
    break;
  case 100:
    P1.powerUp=0;
    break;
  case 101:
    P1.powerUp=1;
    break;
  case 102:
    P1.powerUp=2;
    break;
  default:
    break;
  }
}
void renderHUD() {
  fill(255, 255, 255);
  textSize(4*pixel);
  text(coinCounter, 7*blockSize, 1*blockSize);
  text(coinCounter, 7*blockSize, 1*pixel);
}
void renderLayer1() {
  noStroke();
  clear();
  background(100, 100, 255);
  for (int x=cameraX/blockSize; x<=(cameraX/blockSize)+17; x++) {
    for (int y=0; y<15; y++) {
      if (y>=levels[currentLvl].length) {
      } else {
        if (x>=levels[currentLvl][y].length) {
        } else {
          if ((x<0)|(y<0)) {
          } else {
            switch(levels[currentLvl][y][x]) {
            default:
              break;
              //ground block
            case 1:
              //Block background
              fill(204, 115, 38);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY), blockSize, blockSize);
              //Block decorations
              //rect((x*blockSize-cameraX)+15*pixel, (y*blockSize-cameraY), 1*pixel, 16*pixel);
              fill(0, 0, 0);
              rect((x*blockSize-cameraX)+15*pixel, (y*blockSize-cameraY), 1*pixel, 16*pixel);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY)+15*pixel, 16*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+7*pixel, (y*blockSize-cameraY)+12*pixel, 1*pixel, 3*pixel);
              rect((x*blockSize-cameraX)+4*pixel, (y*blockSize-cameraY)+12*pixel, 3*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+2*pixel, (y*blockSize-cameraY)+11*pixel, 2*pixel, 1*pixel);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY)+10*pixel, 2*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+8*pixel, (y*blockSize-cameraY)+10*pixel, 1*pixel, 2*pixel);
              rect((x*blockSize-cameraX)+9*pixel, (y*blockSize-cameraY)+pixel, 1*pixel, 9*pixel);
              rect((x*blockSize-cameraX)+10*pixel, (y*blockSize-cameraY)+6*pixel, 6*pixel, 1*pixel);
              fill(229, 199, 158);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY), 1*pixel, 15*pixel);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY), 15*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+8*pixel, (y*blockSize-cameraY)+12*pixel, 1*pixel, 3*pixel);
              rect((x*blockSize-cameraX)+4*pixel, (y*blockSize-cameraY)+13*pixel, 3*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+2*pixel, (y*blockSize-cameraY)+12*pixel, 2*pixel, 1*pixel);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY)+11*pixel, 2*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+9*pixel, (y*blockSize-cameraY)+10*pixel, 1*pixel, 2*pixel);
              rect((x*blockSize-cameraX)+10*pixel, (y*blockSize-cameraY)+pixel, 1*pixel, 9*pixel);
              rect((x*blockSize-cameraX)+10*pixel, (y*blockSize-cameraY)+7*pixel, 5*pixel, 1*pixel);
              break;
              //[?] block
            case 2:
              fill(255, 255, 51);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY), blockSize, blockSize);
              fill(230, 115, 0);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY), 15*pixel, pixel);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY)+1*pixel, pixel, 14*pixel);
              fill(128, 64, 0);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY)+pixel*15, 16*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+pixel*15, (y*blockSize-cameraY), pixel, 15*pixel);
              rect((x*blockSize-cameraX)+pixel*2, (y*blockSize-cameraY)+pixel*2, pixel, pixel);
              rect((x*blockSize-cameraX)+pixel*13, (y*blockSize-cameraY)+pixel*2, pixel, pixel);
              rect((x*blockSize-cameraX)+pixel*2, (y*blockSize-cameraY)+pixel*13, pixel, pixel);
              rect((x*blockSize-cameraX)+pixel*13, (y*blockSize-cameraY)+pixel*13, pixel, pixel);
              rect((x*blockSize-cameraX)+pixel*8, (y*blockSize-cameraY)+pixel*12, 2*pixel, 2*pixel);
              rect((x*blockSize-cameraX)+pixel*8, (y*blockSize-cameraY)+pixel*9, 2*pixel, 2*pixel);
              rect((x*blockSize-cameraX)+pixel*9, (y*blockSize-cameraY)+pixel*8, 3*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+pixel*10, (y*blockSize-cameraY)+pixel*5, 2*pixel, 3*pixel);
              rect((x*blockSize-cameraX)+pixel*6, (y*blockSize-cameraY)+pixel*4, 5*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+pixel*5, (y*blockSize-cameraY)+pixel*5, 2*pixel, 3*pixel);
              fill(230, 115, 0);
              rect((x*blockSize-cameraX)+pixel*7, (y*blockSize-cameraY)+pixel*11, 2*pixel, 2*pixel);
              rect((x*blockSize-cameraX)+pixel*7, (y*blockSize-cameraY)+pixel*8, 2*pixel, 2*pixel);
              rect((x*blockSize-cameraX)+pixel*8, (y*blockSize-cameraY)+pixel*7, 3*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+pixel*9, (y*blockSize-cameraY)+pixel*4, 2*pixel, 3*pixel);
              rect((x*blockSize-cameraX)+pixel*5, (y*blockSize-cameraY)+pixel*3, 5*pixel, 1*pixel);
              rect((x*blockSize-cameraX)+pixel*4, (y*blockSize-cameraY)+pixel*4, 2*pixel, 3*pixel);
              break;
              //used[?] block
            case 3:
              fill(30, 30, 30);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY), blockSize, blockSize);
              fill(113, 39, 0);
              rect((x*blockSize-cameraX)+1*pixel, (y*blockSize-cameraY)+1*pixel, blockSize-2*pixel, blockSize-2*pixel);
              fill(30, 30, 30);
              rect((x*blockSize-cameraX)+pixel*2, (y*blockSize-cameraY)+pixel*2, pixel, pixel);
              rect((x*blockSize-cameraX)+pixel*13, (y*blockSize-cameraY)+pixel*2, pixel, pixel);
              rect((x*blockSize-cameraX)+pixel*2, (y*blockSize-cameraY)+pixel*13, pixel, pixel);
              rect((x*blockSize-cameraX)+pixel*13, (y*blockSize-cameraY)+pixel*13, pixel, pixel);
              break;
              //brick block
            case 4:
              fill(0, 0, 0);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY), blockSize, blockSize);
              fill(204, 115, 38);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY)+1*pixel, 7*pixel, 2*pixel);
              rect((x*blockSize-cameraX)+8*pixel, (y*blockSize-cameraY)+1*pixel, 7*pixel, 2*pixel);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY)+4*pixel, 3*pixel, 3*pixel);
              rect((x*blockSize-cameraX)+4*pixel, (y*blockSize-cameraY)+4*pixel, 7*pixel, 3*pixel);
              rect((x*blockSize-cameraX)+12*pixel, (y*blockSize-cameraY)+4*pixel, 4*pixel, 3*pixel);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY)+8*pixel, 7*pixel, 3*pixel);
              rect((x*blockSize-cameraX)+8*pixel, (y*blockSize-cameraY)+8*pixel, 7*pixel, 3*pixel);
              rect((x*blockSize-cameraX)+0*pixel, (y*blockSize-cameraY)+12*pixel, 2*pixel, 3*pixel);
              rect((x*blockSize-cameraX)+3*pixel, (y*blockSize-cameraY)+12*pixel, 7*pixel, 3*pixel);
              rect((x*blockSize-cameraX)+11*pixel, (y*blockSize-cameraY)+12*pixel, 5*pixel, 3*pixel);
              break;
            case 5:
              fill(0, 0, 0);
              rect((x*blockSize-cameraX)+8*pixel, (y*blockSize-cameraY)+1*pixel, 3*pixel, 15*pixel);
              rect((x*blockSize-cameraX)+7*pixel, (y*blockSize-cameraY)+2*pixel, 5*pixel, 13*pixel);
              rect((x*blockSize-cameraX)+6*pixel, (y*blockSize-cameraY)+4*pixel, 7*pixel, 9*pixel);
              fill(255, 215, 0);
              rect((x*blockSize-cameraX)+5*pixel, (y*blockSize-cameraY)+1*pixel, 4*pixel, 15*pixel);
              rect((x*blockSize-cameraX)+4*pixel, (y*blockSize-cameraY)+2*pixel, 6*pixel, 13*pixel);
              rect((x*blockSize-cameraX)+3*pixel, (y*blockSize-cameraY)+4*pixel, 8*pixel, 9*pixel);
              fill(0, 0, 0);
              rect((x*blockSize-cameraX)+8*pixel, (y*blockSize-cameraY)+4*pixel, 1*pixel, 9*pixel);
              rect((x*blockSize-cameraX)+6*pixel, (y*blockSize-cameraY)+13*pixel, 2*pixel, 1*pixel);
              fill(218, 165, 32);
              rect((x*blockSize-cameraX)+5*pixel, (y*blockSize-cameraY)+4*pixel, 1*pixel, 9*pixel);
              rect((x*blockSize-cameraX)+6*pixel, (y*blockSize-cameraY)+3*pixel, 2*pixel, 1*pixel);
              break;
            }
          }
        }
      }
    }
  }
}
void moveCamera() {
  int average=0;
  int nbPlayers=0;
  if (P1active) {
    nbPlayers++;
    average+=P1.x;
  }
  if (P2active) {
    nbPlayers++;
    average+=P2.x;
  }
  average=average/nbPlayers;
  if (average>cameraX+550) {
    cameraX=average-550;
  }
}
class player {
  boolean direction;
  int x, y;
  int speed=2;
  int speedY=0;
  int powerUp=0;
  int nbPlayer=0;
  int maxSpeed=1*blockSize;

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
  }

  void draw() {
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
      rect(x-cameraX, y-cameraY+blockSize-8*pixel, blockSize, 8*pixel );
      rect(x-cameraX, y-cameraY+blockSize+8*pixel, blockSize, 8*pixel );
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
    int block;
    if(powerUp==0){
       block=levels[currentLvl][round(floatY/blockSize+1.49)][x/blockSize];
    }else{
       block=levels[currentLvl][round(floatY/blockSize+0.49)][x/blockSize];
    }
    
    if (floatX/blockSize>x/blockSize-0.5) {
      if ((block!=0)&(block!=5)) {
        x=x/blockSize+1;
        x=x*blockSize;
      }
    }
  }
  void collisionRight() {
    float floatX=x, floatY=y;
    int block=0,block2=0;
    block=levels[currentLvl][round(floatY/blockSize+1.49)][x/blockSize+1];
    if(powerUp!=0){
       block2=levels[currentLvl][round(floatY/blockSize+0.49)][x/blockSize+1];
    }
    
    if (floatX/blockSize<x/blockSize+0.5) {
      if ((block!=0)&(block!=5)) {
        x=x/blockSize;
        x=x*blockSize;
      }
      /*
      if ((block!=0)|(block2!=0)) {
        if ((block!=5)|(block2!=5)) {
          x=x/blockSize;
          x=x*blockSize;
        }
      }
      */
    }
  }
  void collisionUp() {
    float floatX=x, floatY=y;
    int block;
    int charHeight;
    if(powerUp==0){
      charHeight=1;
      block=levels[currentLvl][y/blockSize+1][round(floatX/blockSize)];
    }else{
      charHeight=2;
      block=levels[currentLvl][y/blockSize][round(floatX/blockSize)];
    }
    if (floatY/blockSize>y/blockSize) {
      if (block==2){
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
