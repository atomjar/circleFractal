void setup() {
  size(900, 900);
}

void draw() {
  background(0);
  if (mousePressed) {
    drawCircle(450, 400, 400);
  }
}

void drawCircle(int x, int y, int d) {
  stroke(255, 0, 0);
  fill(255);
  ellipse(x, y, d, d);
  if (d > 10) {
    drawCircle(x + d/2, y, d/2);
    drawCircle(x - d/2, y, d/2);
  }
}