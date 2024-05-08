class gameclear extends gametext {
  gameclear() {
    super();
  }
  void gclear() {
    noLoop();
    textSize(32);
    fill(255,0,0);
    textAlign(CENTER, CENTER);
    text("Game Clear!", width / 2, height / 2);
  }
}
