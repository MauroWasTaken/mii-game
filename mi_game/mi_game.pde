

/*
Author and Owner : Mauro Santos
TODO:
  change round function with something else
  add sfx
  try to make an array of ennemies
  add background music
  make so that goombas can kill you
  add pipes, end pole
  add kill blocks(pits, lava, spikes)
  add mushrooms, flowers ...
  add green and red koopas 
  add a pswitch block
  add coin counter
  add lives system
  add lvl loading system
  add animations

*/
import vsync.*;
import processing.sound.*;
SoundFile file;
player P1, P2;
Mob M1, M2, M3, M4, M5;
boolean pair=false;
int goldR=255, goldG=200, goldI=-1;
boolean P1active=false, P2active=false, M1active=false, M2active=false, M3active=false, M4active=false, M5active=false;
boolean PSwitchActive=false;
int coinCounter=0;
int maxPowerUp=2;
int currentLvl=0;
int pixel=4;
int blockSize=16*pixel;
boolean keyA=false, keyD=false, keyLeft=false, keyRight=false, keyP=false, keyO=false, keyNum1=false, keyNum2=false;
int gravity=2*pixel;
int cameraX=0, cameraY=4*blockSize;
int PSwitchTimer=0;
int[][][] levels=
  {
  //lvl 0
  {  
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 2, 0, 0, 0, 4, 2, 4, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 1, 1, 1, 0, 0, 0, 5, 5, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 1, 1, 1, 1, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  }, 
};

void setup() {
  //screen with 16 blocks of width and 15 blocks of height
  size(1024, 960);
  smooth();
  spawnPlayer(1);
  spawnPlayer(2);
  addMonster(10*blockSize, 9*blockSize, 1);
  frameRate(60);
  PSwitchOn();
  file = new SoundFile(this, "mario.wav");
  file.play();
}

void draw() {
  pair=!pair;
  PSwitchTick();
  changeGold();
  renderLayer1();
  if (P1active) {
    P1.move();
  }
  if (P2active) {
    P2.move();
  }
  if (M1active) {
    M1.behavior();
  }
  if (M2active) {
    M2.behavior();
  }
  if (M3active) {
    M3.behavior();
  }
  if (M4active) {
    M4.behavior();
  }
  if (M5active) {
    M5.behavior();
  }
}

void keyPressed() {
  keyverification(keyCode, true);
}

void keyReleased() {
  keyverification(keyCode, false);
}

void keyverification(int k, boolean b) {
  print(k);
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
  case 103:
    P2.powerUp=0;
    break;
  case 104:
    P2.powerUp=1;
    break;
  case 105:
    P2.powerUp=2;
    break;
  case 38:
    killPlayer(2);
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
    for (int y=cameraY/blockSize; y<=(cameraY/blockSize)+15; y++) {
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
              fill(goldR, goldG, 51);
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
              fill(goldR, goldG, 0);
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
  int averageX=0, averageY=0;
  int nbPlayers=0;
  if (P1active) {
    nbPlayers++;
    averageX+=P1.x;
    averageY+=P1.y;
  }
  if (P2active) {
    nbPlayers++;
    averageX+=P2.x;
    averageY+=P2.y;
  }
  averageX=averageX/nbPlayers;
  averageY=averageY/nbPlayers;
  if (averageX>cameraX+550) {
    cameraX=averageX-550;
  }
  if (averageX<cameraX+200) {
    cameraX=averageX-200;
  }
  //if (averageY>)
}
void addMonster(int x, int y, int type) {
  if (M1active) {
    if (M2active) {
      if (M3active) {
        if (M4active) {
          if (M5active) {
          } else {
            M5=new Mob();
            M5.spawn(type, 5, x, y);
          }
        } else {
          M4=new Mob();
          M4.spawn(type, 4, x, y);
        }
      } else {
        M3=new Mob();
        M3.spawn(type, 3, x, y);
      }
    } else {
      M2=new Mob();
      M2.spawn(type, 2, x, y);
    }
  } else {
    M1=new Mob();
    M1.spawn(type, 1, x, y);
  }
}
void killPlayer(int playerID) {
  switch (playerID) {
  case 1:
    P1active=false;
    P1=null;
    break;
  case 2:
    P2active=false;
    P2=null;
    break;
  }
}
void spawnPlayer(int playerID) {
  switch (playerID) {
  case 1:
    P1=new player();
    P1.spawn(1);
    break;
  case 2:
    P2=new player();
    P2.spawn(2);
    break;
  }
}
void changeGold() {
  if (pair) {
    if (goldR>255) {
      goldI=-1;
    }
    if (goldR<180) {
      goldI=1;
    }
    goldR+=3*goldI;
    goldG+=2*goldI;
  }
}
void PSwitchOn() {
  PSwitchTimer=5*60;
  changecoins();
  PSwitchActive=true;
}
void PSwitchTick() {
  if (PSwitchActive) {
    if (PSwitchTimer==0) {
      changecoins();
      PSwitchActive=false;
    } else {
      PSwitchTimer--;
    }
  }
}
void changecoins() {
  for (int i=0; i<levels[currentLvl].length; i++) {
    for (int j=0; j<levels[currentLvl][i].length; j++) {
      switch (levels[currentLvl][i][j]) {
      case 4:
        levels[currentLvl][i][j]=5;
        break;
      case 5:
        levels[currentLvl][i][j]=4;
        break;
      }
    }
  }
}
