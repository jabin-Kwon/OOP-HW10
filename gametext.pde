class gametext {
  gametext() {
  }
  void disp()
  {
    noLoop();
    textSize(32);
    fill(255,0,0);
    textAlign(CENTER, CENTER);
    text("Score: " + (endTime - startTime) / 1000 + " seconds", width / 2, height / 2 + 40);
  }
}
