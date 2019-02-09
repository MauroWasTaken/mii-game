boolean pair=false;
int pixel=4;
int blockSize=16*pixel;
int currentLvl=0;
int goldR=255, goldG=200, goldI=-1;
int cameraX=0, cameraY=5*blockSize;
private int lvlHeight=20;
int selected=1;
int nbBlocks=5;
int cameraMovement=0;
int[][] levels=
  //lvl 0
  {  
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  };
void setup() {
  size(1024, 960);
  frameRate(60);
}
void draw() {
  pair=!pair;
  changeGold();
  moveCamera();
  renderLayer1();
  showSelection();
  renderHUD();
}
void renderHUD() {
  fill(255, 255, 255);
  rect(50, 20, width/2-25, 0);
  textSize(4*pixel);
}
void renderLayer1() {
  noStroke();
  clear();
  background(50, 50, 125);
  for (int x=cameraX/blockSize; x<=(cameraX/blockSize)+17; x++) {
    for (int y=cameraY/blockSize; y<=(cameraY/blockSize)+15; y++) {
      if (y>=levels.length) {
      } else {
        if (x>=levels[y].length) {
        } else {
          if ((x<0)|(y<0)) {
          } else {
            switch(levels[y][x]) {
            default:
              fill(100, 100, 255);
              rect((x*blockSize-cameraX), (y*blockSize-cameraY), blockSize, blockSize);
              break;
              //ground block
            case 1:
              drawGroundBlock(x, y);
              break;
              //[?] block
            case 2:
              drawQuestionBlock(x, y);
              break;
              //used[?] block
            case 3:
              drawUsedQuestionBlock(x, y);
              break;
              //brick block
            case 4:
              drawBrickBlock(x, y);
              break;
            case 5:
              drawCoin(x, y);
              break;
            }
          }
        }
      }
    }
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
void mouseWheel(MouseEvent event) {
  cameraMovement=event.getCount();
}
void moveCamera() {
  if (mouseButton==CENTER) {
    cameraMovement=0;
  }
  cameraX+=cameraMovement*pixel;
}
void showSelection() {
  int x=(int)((cameraX+mouseX)/blockSize);
  int y=(int)((cameraY+mouseY)/blockSize);
  switch(selected) {
  default:
    break;
    //ground block
  case 1:
    drawGroundBlock(x, y);
    break;
    //[?] block
  case 2:
    drawQuestionBlock(x, y);
    break;
    //used[?] block
  case 3:
    drawUsedQuestionBlock(x, y);
    break;
    //brick block
  case 4:
    drawBrickBlock(x, y);
    break;
  case 5:
    drawCoin(x, y);
    break;
  }
}
void mouseClicked() {
  if(mouseButton==LEFT){
    placeBlock();
  }
  if(mouseButton==RIGHT){
    selected++;
    if(selected>nbBlocks){
      selected=0;
    }
  }
}
void placeBlock(){
  int x=(int)((cameraX+mouseX)/blockSize);
  int y=(int)((cameraY+mouseY)/blockSize);
  levels[y][x]=selected;
}
void keyPressed() {
  print(keyCode);
  switch(keyCode){
    //case +
    case 107:
    for(int i=0;i<levels.length;i++){
      levels[i] = expand(levels[i],levels[i].length+1);
    }
      break;
    //case -
    case 109:
      for(int i=0;i<levels.length;i++){
      levels[i] = expand(levels[i],levels[i].length-1);
    }
      break;
    //case S
    case 83:
    String level = "{ \n";
    PrintWriter output;
      output = createWriter("exportedLevel(open with wordpad).txt"); 
  for (int y=0; y<levels.length; y++) {
    level =level + "\t {";
    for (int x=0; x<levels[0].length; x++) {
       level =level +levels[y][x];
       if(x!=levels[0].length-1){
         level =level +",";
       }
    }
    level =level + "}, \n";
    
  }
  level =level + "};";
      print(level);
      output.println(level);  
      output.flush();
      output.close();
      break;
  }
}
