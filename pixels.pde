PImage bg;
int num;
pix[] pixs;
bouncer mybouncer;

void setup() {
  size(800, 536, FX2D);
  frameRate(24);
  bg = loadImage("12.jpg");
  bg.loadPixels();
  loadPixels();

  rectMode(CENTER);
  noStroke();

  num = 300;
  pixs = new pix[num];

  int i = 0;
  while (i < num) {
    pixs[i] = new pix();
    i++;
  }

  mybouncer = new bouncer();
}

void draw() {
  //background(bg); 

  for (int x = 0; x < bg.width; x++) {
    for (int y = 0; y < bg.height; y++ ) {
      int loc = x + y*bg.width;
      float r, g, b;
      r = red (bg.pixels[loc]);
      g = green (bg.pixels[loc]);
      b = blue (bg.pixels[loc]);
      float maxdist = 200;
      float d = dist(x, y, mybouncer.x, mybouncer.y);
      float adjustbrightness = 255*(maxdist-d)/maxdist;
      r += adjustbrightness;
      g += adjustbrightness;
      b += adjustbrightness;
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      color co = color(r, g, b);
      pixels[y*width + x] = co;
    }
  }
  updatePixels();

  int i = 0;
  while (i < num) {
    pixs[i].show();
    pixs[i].act();
    i++;
  }

  mybouncer.act();
}
