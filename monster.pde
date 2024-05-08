class monster extends rabbit {
  monster(int i) {
    super();
    x= random(width/4, width-width/4);
    y= random(height);
    b=3;
    vx= (2+i/2.3)/2;
    vy= (2+i/2.3)/2;
    cc=0;
  }
  void update() {
    x += vx;
    y += vy;
    if (x > width || x < 0) vx = -vx;
    if (y > height || y < 0) vy = -vy;
  }
}
