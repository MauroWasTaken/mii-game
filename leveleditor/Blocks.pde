void drawGroundBlock(int x, int y) {
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
}
void drawQuestionBlock(int x, int y) {
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
}
void drawUsedQuestionBlock(int x, int y) {
  fill(30, 30, 30);
  rect((x*blockSize-cameraX), (y*blockSize-cameraY), blockSize, blockSize);
  fill(113, 39, 0);
  rect((x*blockSize-cameraX)+1*pixel, (y*blockSize-cameraY)+1*pixel, blockSize-2*pixel, blockSize-2*pixel);
  fill(30, 30, 30);
  rect((x*blockSize-cameraX)+pixel*2, (y*blockSize-cameraY)+pixel*2, pixel, pixel);
  rect((x*blockSize-cameraX)+pixel*13, (y*blockSize-cameraY)+pixel*2, pixel, pixel);
  rect((x*blockSize-cameraX)+pixel*2, (y*blockSize-cameraY)+pixel*13, pixel, pixel);
  rect((x*blockSize-cameraX)+pixel*13, (y*blockSize-cameraY)+pixel*13, pixel, pixel);
}
void drawBrickBlock(int x, int y) {
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
}
void drawCoin(int x, int y) {
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
}
