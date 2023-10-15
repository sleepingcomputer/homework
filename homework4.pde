//limuze Homework for processing. 2023/10/15

PImage img;

void setup() {
 // frameRate(24);
  size(717, 984);
  img = loadImage("maria.jpg");
  noStroke();
  background(255);
}

void draw() {   
  // random coordination created for X and Y
  int x = int(random(img.width));
  int y = int(random(img.height));
  // abstract rectangle image from maria.jpg
  PImage pix = img.get(x, y,50,50);
  image(pix,x,y,50,50);
}
