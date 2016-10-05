color backgroundColor = color(0,0,0);
PImage img;

void setup() {
  size(600, 600);
  background(backgroundColor);
  noStroke();
  fill(182, 220, 250, 80);
  img = loadImage("tgg.png");
}

void draw() {
if (mousePressed) {
    fill(random(150,225), random(20,200),random(20,200),60);
    ellipse(mouseX, mouseY, random(20,60), random(20,60));
    ellipse(mouseX, mouseY, 45, 45);
  } else {
    ellipse(mouseX, mouseY, 20, 20);
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
  if (pmouseX == mouseX && pmouseY == mouseY) {
    noStroke();
    ellipse(mouseX, mouseY, 25, 25);
  }
  if (keyPressed) {
    background(random(0,225),random(0,225),random(0,225));
}
  ellipse(300,300,250,250);
  image(img,200,200);
  }