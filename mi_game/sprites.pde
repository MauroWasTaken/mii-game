void drawPlayerSprite(int player, int sprite, boolean direction) {
  int x=0, y=0, dirS=0, dirM=1;
  if (!direction) {
    dirS=16;
    dirM=-1;
  }
  if (player==1) {
    x=P1.x;
    y=P1.y;
    fill(184, 52, 37);
  } else {
    x=P2.x;
    y=P2.y;
    fill(52, 138, 0);
  }
  switch(sprite) {
  case 0:
    //cap 
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY+blockSize), dirM*5*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+1*pixel, dirM*9*pixel, pixel);
    //shirt
    rect((x-cameraX)+pixel*invNeg(dirS-2), (y-cameraY+blockSize)+pixel*9, dirM*12*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY+blockSize)+pixel*8, dirM*10*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+pixel*7, dirM*7*pixel, pixel);
    fill(247, 196, 179);
    //head
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY+blockSize)+pixel*2, dirM*6*pixel, 5*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+pixel*3, dirM*9*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+pixel*4, dirM*10*pixel, pixel);
    //hands
    rect((x-cameraX)+pixel*invNeg(dirS-2), (y-cameraY+blockSize)+pixel*10, dirM*2*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+pixel*11, dirM*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-12), (y-cameraY+blockSize)+pixel*10, dirM*2*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-11), (y-cameraY+blockSize)+pixel*11, dirM*pixel, pixel);
    fill(160, 82, 45);
    //boots
    rect((x-cameraX)+pixel*invNeg(dirS-2), (y-cameraY+blockSize)+pixel*15, dirM*4*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-10), (y-cameraY+blockSize)+pixel*15, dirM*4*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY+blockSize)+pixel*14, dirM*3*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-10), (y-cameraY+blockSize)+pixel*14, dirM*3*pixel, 1*pixel);
    //face hair and eyes
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+pixel*2, dirM*3*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY+blockSize)+pixel*2, dirM*1*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY+blockSize)+pixel*3, dirM*1*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY+blockSize)+pixel*5, dirM*2*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY+blockSize)+pixel*4, dirM*2*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY+blockSize)+pixel*2, dirM*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY+blockSize)+pixel*5, dirM*4*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-10), (y-cameraY+blockSize)+pixel*4, dirM*1*pixel, 1*pixel);
    fill(0, 0, 205);
    //pants
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+pixel*12, dirM*3*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY+blockSize)+pixel*12, dirM*3*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY+blockSize)+pixel*10, dirM*6*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-6), (y-cameraY+blockSize)+pixel*9, dirM*4*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-6), (y-cameraY+blockSize)+pixel*7, dirM*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY+blockSize)+pixel*8, dirM*pixel, 2*pixel);
    fill(232, 199, 132);
    //buttons
    rect((x-cameraX)+pixel*invNeg(dirS-6), (y-cameraY+blockSize)+pixel*10, dirM*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY+blockSize)+pixel*10, dirM*pixel, pixel);
    break;


  case 1:
    //cap 
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY+blockSize), dirM*5*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+1*pixel, dirM*9*pixel, pixel);
    //shirt
    rect((x-cameraX)+pixel*invNeg(dirS-12), (y-cameraY+blockSize)+2*pixel, dirM*3*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-12), (y-cameraY+blockSize)+5*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY+blockSize)+7*pixel, dirM*8*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-11), (y-cameraY+blockSize)+6*pixel, dirM*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY+blockSize)+9*pixel, dirM*3*pixel, 1*pixel);
    fill(247, 196, 179);
    //head
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY+blockSize)+pixel*2, dirM*6*pixel, 5*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+pixel*3, dirM*9*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+pixel*4, dirM*10*pixel, pixel);
    //hands
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY+blockSize)+pixel*7, dirM*3*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-13), (y-cameraY+blockSize), dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-12), (y-cameraY+blockSize), dirM*1*pixel, 1*pixel);
    fill(160, 82, 45);
    //shoes    
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+pixel*11, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY+blockSize)+pixel*12, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-14), (y-cameraY+blockSize)+pixel*8, dirM*2*pixel, 4*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-15), (y-cameraY+blockSize)+pixel*7, dirM*pixel, pixel);
    //face hair and eyes
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY+blockSize)+pixel*2, dirM*3*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY+blockSize)+pixel*2, dirM*1*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY+blockSize)+pixel*3, dirM*1*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY+blockSize)+pixel*5, dirM*2*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY+blockSize)+pixel*4, dirM*2*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY+blockSize)+pixel*2, dirM*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY+blockSize)+pixel*5, dirM*4*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-10), (y-cameraY+blockSize)+pixel*4, dirM*1*pixel, 1*pixel);
    fill(0, 0, 205);
    //pants
    rect((x-cameraX)+pixel*invNeg(dirS-6), (y-cameraY+blockSize)+pixel*10, dirM*6*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-8), (y-cameraY+blockSize)+pixel*9, dirM*6*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-8), (y-cameraY+blockSize)+pixel*8, dirM*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-11), (y-cameraY+blockSize)+pixel*8, dirM*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-7), (y-cameraY+blockSize)+pixel*7, dirM*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-10), (y-cameraY+blockSize)+pixel*7, dirM*pixel, pixel);
    fill(232, 199, 132);
    //buttons
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY+blockSize)+pixel*10, dirM*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-11), (y-cameraY+blockSize)+pixel*9, dirM*pixel, pixel);
    break;
  case 10:
    //cap
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY), dirM*5*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY)+1*pixel, dirM*7*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-2), (y-cameraY)+2*pixel, dirM*8*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-2), (y-cameraY)+3*pixel, dirM*11*pixel, 1*pixel);
    //shirt
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY)+16*pixel, dirM*16*pixel, 4*pixel);
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+15*pixel, dirM*14*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+14*pixel, dirM*12*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-3)*pixel, (y-cameraY)+13*pixel, dirM*10*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+12*pixel, dirM*8*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+11*pixel, dirM*1*pixel, 1*pixel);
    fill(247, 196, 179);
    //head
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+4*pixel, dirM*9*pixel, 7*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+11*pixel, dirM*6*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+10*pixel, dirM*8*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+6*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+5*pixel, dirM*3*pixel, 2*pixel);
    //hands
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY)+20*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-1), (y-cameraY)+22*pixel, dirM*3*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-12), (y-cameraY)+20*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-12), (y-cameraY)+22*pixel, dirM*3*pixel, 2*pixel);
    fill(160, 82, 45);
    //boots
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+28*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY)+30*pixel, dirM*6*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+28*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+30*pixel, dirM*6*pixel, 2*pixel);
    //face hair and eyes
    rect((x-cameraX)+invNeg(dirS-7)*pixel, (y-cameraY)+8*pixel, dirM*1*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-8)*pixel, (y-cameraY)+8*pixel, dirM*5*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-9)*pixel, (y-cameraY)+7*pixel, dirM*1*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-7)*pixel, (y-cameraY)+4*pixel, dirM*1*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-8)*pixel, (y-cameraY)+5*pixel, dirM*1*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+4*pixel, dirM*3*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+4*pixel, dirM*1*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+6*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+5*pixel, dirM*1*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY)+7*pixel, dirM*2*pixel, 3*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+9*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+10*pixel, dirM*1*pixel, 1*pixel);
    fill(0, 0, 205);
    //pants
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+25*pixel, dirM*5*pixel, 3*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+25*pixel, dirM*5*pixel, 3*pixel);
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+25*pixel, dirM*6*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-9)*pixel, (y-cameraY)+25*pixel, dirM*6*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+24*pixel, dirM*12*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-3)*pixel, (y-cameraY)+23*pixel, dirM*10*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+18*pixel, dirM*8*pixel, 5*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+16*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+16*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+12*pixel, dirM*1*pixel, 5*pixel);
    rect((x-cameraX)+invNeg(dirS-5)*pixel, (y-cameraY)+12*pixel, dirM*1*pixel, 5*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+11*pixel, dirM*1*pixel, 1*pixel);
    fill(232, 199, 132);
    //buttons
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY)+pixel*19, dirM*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-10), (y-cameraY)+pixel*19, dirM*pixel, pixel);
    //hat sign
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY)+pixel*1, dirM*pixel, pixel*2);
    rect((x-cameraX)+pixel*invNeg(dirS-8), (y-cameraY)+pixel*2, dirM*pixel, pixel);
    break;



  case 11:
    //cap
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY)+2*pixel, dirM*5*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY)+3*pixel, dirM*7*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-2), (y-cameraY)+4*pixel, dirM*8*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-2), (y-cameraY)+5*pixel, dirM*11*pixel, 1*pixel);
    //shirt
    rect((x-cameraX)+pixel*invNeg(dirS-10), (y-cameraY)+4*pixel, dirM*5*pixel, 5*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY)+9*pixel, dirM*5*pixel, 5*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-4), (y-cameraY)+14*pixel, dirM*9*pixel, 3*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-1), (y-cameraY)+15*pixel, dirM*12*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY)+16*pixel, dirM*12*pixel, 5*pixel);
    fill(247, 196, 179);
    //head
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+6*pixel, dirM*9*pixel, 7*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+13*pixel, dirM*6*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+12*pixel, dirM*8*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+8*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+7*pixel, dirM*3*pixel, 2*pixel);
    //hands
    rect((x-cameraX)+invNeg(dirS-11)*pixel, (y-cameraY)+0*pixel, dirM*3*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+1*pixel, dirM*5*pixel, 3*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+18*pixel, dirM*2*pixel, 5*pixel);
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+19*pixel, dirM*4*pixel, 3*pixel);
    rect((x-cameraX)+invNeg(dirS-0)*pixel, (y-cameraY)+20*pixel, dirM*1*pixel, 3*pixel);
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+23*pixel, dirM*2*pixel, 1*pixel);
    fill(160, 82, 45);
    //boots
    rect((x-cameraX)+invNeg(dirS-0)*pixel, (y-cameraY)+24*pixel, dirM*3*pixel, 5*pixel);
    rect((x-cameraX)+invNeg(dirS-0)*pixel, (y-cameraY)+24*pixel, dirM*2*pixel, 6*pixel);
    rect((x-cameraX)+invNeg(dirS-0)*pixel, (y-cameraY)+24*pixel, dirM*1*pixel, 7*pixel);
    //face hair and eyes
    rect((x-cameraX)+invNeg(dirS-7)*pixel, (y-cameraY)+10*pixel, dirM*1*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-8)*pixel, (y-cameraY)+10*pixel, dirM*5*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-9)*pixel, (y-cameraY)+9*pixel, dirM*1*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-7)*pixel, (y-cameraY)+6*pixel, dirM*1*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-8)*pixel, (y-cameraY)+7*pixel, dirM*1*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+6*pixel, dirM*3*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+6*pixel, dirM*1*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+8*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+7*pixel, dirM*1*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY)+9*pixel, dirM*2*pixel, 3*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+11*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+12*pixel, dirM*1*pixel, 1*pixel);
    fill(0, 0, 205);
    //pants
    rect((x-cameraX)+invNeg(dirS-3)*pixel, (y-cameraY)+23*pixel, dirM*4*pixel, 6*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+22*pixel, dirM*4*pixel, 6*pixel);
    rect((x-cameraX)+invNeg(dirS-5)*pixel, (y-cameraY)+21*pixel, dirM*6*pixel, 6*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+27*pixel, dirM*2*pixel, 1*pixel);
    fill(232, 199, 132);
    //buttons
    //hat sign
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY)+pixel*3, dirM*pixel, pixel*2);
    rect((x-cameraX)+pixel*invNeg(dirS-8), (y-cameraY)+pixel*4, dirM*pixel, pixel);
    break;



  case 20:
    fill(255, 250, 250);
    //cap
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY), dirM*5*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-3), (y-cameraY)+1*pixel, dirM*7*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-2), (y-cameraY)+2*pixel, dirM*8*pixel, 1*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-2), (y-cameraY)+3*pixel, dirM*11*pixel, 1*pixel);
    //shirt
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY)+16*pixel, dirM*16*pixel, 4*pixel);
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+15*pixel, dirM*14*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+14*pixel, dirM*12*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-3)*pixel, (y-cameraY)+13*pixel, dirM*10*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+12*pixel, dirM*8*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+11*pixel, dirM*1*pixel, 1*pixel);
    fill(247, 196, 179);
    //head
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+4*pixel, dirM*9*pixel, 7*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+11*pixel, dirM*6*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+10*pixel, dirM*8*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+6*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+5*pixel, dirM*3*pixel, 2*pixel);
    //hands
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY)+20*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-1), (y-cameraY)+22*pixel, dirM*3*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-12), (y-cameraY)+20*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-12), (y-cameraY)+22*pixel, dirM*3*pixel, 2*pixel);
    fill(160, 82, 45);
    //boots
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+28*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY)+30*pixel, dirM*6*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+28*pixel, dirM*4*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+30*pixel, dirM*6*pixel, 2*pixel);
    //face hair and eyes
    rect((x-cameraX)+invNeg(dirS-7)*pixel, (y-cameraY)+8*pixel, dirM*1*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-8)*pixel, (y-cameraY)+8*pixel, dirM*5*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-9)*pixel, (y-cameraY)+7*pixel, dirM*1*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-7)*pixel, (y-cameraY)+4*pixel, dirM*1*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-8)*pixel, (y-cameraY)+5*pixel, dirM*1*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+4*pixel, dirM*3*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+4*pixel, dirM*1*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+6*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+5*pixel, dirM*1*pixel, 2*pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-0), (y-cameraY)+7*pixel, dirM*2*pixel, 3*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+9*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+10*pixel, dirM*1*pixel, 1*pixel);
    if (player==1) {
      fill(184, 52, 37);
    } else {
      fill(52, 138, 0);
    }
    //pants
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+25*pixel, dirM*5*pixel, 3*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+25*pixel, dirM*5*pixel, 3*pixel);
    rect((x-cameraX)+invNeg(dirS-1)*pixel, (y-cameraY)+25*pixel, dirM*6*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-9)*pixel, (y-cameraY)+25*pixel, dirM*6*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-2)*pixel, (y-cameraY)+24*pixel, dirM*12*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-3)*pixel, (y-cameraY)+23*pixel, dirM*10*pixel, 1*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+18*pixel, dirM*8*pixel, 5*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+16*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+16*pixel, dirM*2*pixel, 2*pixel);
    rect((x-cameraX)+invNeg(dirS-10)*pixel, (y-cameraY)+12*pixel, dirM*1*pixel, 5*pixel);
    rect((x-cameraX)+invNeg(dirS-5)*pixel, (y-cameraY)+12*pixel, dirM*1*pixel, 5*pixel);
    rect((x-cameraX)+invNeg(dirS-4)*pixel, (y-cameraY)+11*pixel, dirM*1*pixel, 1*pixel);
    fill(232, 199, 132);
    //buttons
    rect((x-cameraX)+pixel*invNeg(dirS-5), (y-cameraY)+pixel*19, dirM*pixel, pixel);
    rect((x-cameraX)+pixel*invNeg(dirS-10), (y-cameraY)+pixel*19, dirM*pixel, pixel);
    //hat sign
    rect((x-cameraX)+pixel*invNeg(dirS-9), (y-cameraY)+pixel*1, dirM*pixel, pixel*2);
    rect((x-cameraX)+pixel*invNeg(dirS-8), (y-cameraY)+pixel*2, dirM*pixel, pixel);
    break;
  }
}
int invNeg(int value) {
  if (value<0) {
    value=-value;
  }
  return value;
}
