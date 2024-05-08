monster [] mm;
mainchar nn;
gameclear cc;
gameover gg;
int startTime=0;
int endTime=0;
boolean gameOver = false;
void setup() {
  size (800, 800);
  mm = new monster [15];
  nn = new mainchar();
  cc = new gameclear(); 
  gg = new gameover(); 
  startTime = millis();
  for (int i = 0; i <15; i++) {
    mm[i] = new monster(i);
  }
}
void draw() {
  background(92, 255, 209);
  int current = millis();
  int seconds = current / 1000;
  float posX = 20;
  float posY = 20;
  fill(0);
  textSize(20);
  text("Time: " + seconds, posX, posY);
  for (int i=0; i<15; i++) {
    mm[i].update();
    mm[i].min();
  }
  nn.min();

  for (int i = 0; i < 15; i++) {    //sprint3
    float distance = sqrt(sq(mm[i].x - nn.x) + sq(mm[i].y - nn.y));
    if (distance < 5 * mm[i].b + 5 * nn.b) {
      gameOver = true;
      endTime = millis();
      break;
    }
  }
  if (gameOver && (seconds >10)) {
    cc.disp();
    cc.gclear();
  } 
  if(gameOver && (seconds<=10)) {
    gg.disp();
    gg.over();
  }
}

void keyPressed() {   // sprint 2
  if (key == 'a') nn.x -= 5;
  else if (key == 'd') nn.x += 5;
  else if (key == 's') nn.y += 5;
  else if (key == 'w') nn.y -= 5;
}
