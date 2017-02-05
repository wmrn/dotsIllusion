PImage img;
int w, h;
void setup() {
  img=loadImage("lady.jpg");
  w=img.width;
  h=img.height;
  size(w*2, h);
  noStroke();
}

void draw() {
  background(255);
  img.loadPixels();
  for (int x=0; x<w; x+=16) {
    for (int y=0; y<h; y+=16) {
      fill(img.pixels[y*w+x]);
      ellipse(x+8, y+8, 16, 16);
      //println(saturation(img.pixels[y*w+x]));
      fill(0);
      //色相
      /*float h=hue(img.pixels[y*w+x])/255;      
       ellipse(x+8, y+8, 15*h, 15*h);*/
      //彩度
      /*float s=saturation(img.pixels[y*w+x])/255;
       ellipse(x+8,y+8,15*s,15*s);*/
      //明度
      float b=1-brightness(img.pixels[y*w+x])/255;      
      ellipse(x+8, y+8, 15*b, 15*b);
    }
  }
  image(img, w, 0);
}

void keyPressed() {
  save("pic.png");
}

