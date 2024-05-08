class gameover extends gametext {
  gameover() {
    super();
  }
  void over() {
    noLoop();
    textSize(32);
    fill(255,0,0);
    textAlign(CENTER, CENTER);
    text("Game over!", width / 2, height / 2);
  }
}
