
class bouncer {

  float x, y, vx, vy;


  bouncer() {
    x = y = 400;
    vx = vy = int(random(-10, 10));
  }

  void show() {
    circle(x, y, 50);
  }

  void act() {

    x = x+vx;
    y = y+vy;
    if (x < 5 || x > width-5 ) {
      vx = -vx;
    }
    if (y < 5 || y > height-5) {
      vy = -vy;
    }
  }
}
