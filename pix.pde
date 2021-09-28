class pix {
  float x, y;
  float w, c;

  pix() {
    x = random(0, width);
    y = random(0, height);
    c = get( int(x), int(y));
    w = 0;
  }

  void show() {
    fill(c);
    square(x, y, w);
  }

  void act() {
    //w = dist(mouseX, mouseY, x, y)/10;
    w = dist(mybouncer.x, mybouncer.y, x, y)/10;
  }
}
