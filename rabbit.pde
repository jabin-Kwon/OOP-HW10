class rabbit {
  rabbit() {
  }
  float x, y, b, vx, vy;
  int cc ;
  void min() {
    stroke(0);
    fill(255, cc, cc);
    arc(x-(b*2+b/2-b/10), y, 3*b, 8*b, PI, PI*2); //left ear
    arc(x+(b*2+b/2-b/10), y, 3*b, 8*b, PI, PI*2); //right ear
    stroke(x);
    circle(x, y+2*b+b/9+b/2, b*9); //face
    fill(0);
    strokeWeight(1);
    arc(x-b, y+(2*b+b/2), b, b*2, 0, PI*2); //left eye
    arc(x+b, y+(2*b+b/2), b, b*2, 0, PI*2); //right eye
    circle(x, y+4*b, b*3/2); //nose
    stroke(1);
    line(x, y+4*b, x, y+5*b); //philtrum
    fill(241, 95, 95);
    arc(x, y+5*b, b*6, b*3, 0, PI); //mouse
    stroke(0);
    line(x+(b*2+b/2), y+(3*b+b/2), x+(b*3+b/2), y+b*4);
    line(x+(b*2+b/2), y+(3*b), x+(b*3+b/2), y+(b*2+b/5));
    line(x-(b*2+b/2), y+(3*b+b/2), x-(b*3+b/2), y+b*4);
    line(x-(b*2+b/2), y+(3*b), x-(b*3+b/2), y+(b*2+b/5));
    line(x+(b*2+b/2+b/10), y+(3*b+b/4), x+(b*3+b/2), y+(3*b+b/4));
    line(x-(b*2+b/2+b/10), y+(3*b+b/4), x-(b*3+b/2), y+(3*b+b/4));
  }
}
