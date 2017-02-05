PImage img;
int w, h;
void setup() {
  img=loadImage("lady.jpg");
  w=img.width;
  h=img.height;
  size(w, h);
  noStroke();
  //strokeWeight(0.5);
}

void draw() {
  background(255);
  img.loadPixels();
  for (int x=0; x<w; x+=16) {
    for (int y=0; y<h; y+=16) {
     //println(brightness(img.pixels[y*w+x])/255);
      //色相
      /*float h=hue(img.pixels[y*w+x])/255;      
       fill(img.pixels[y*w+x]);
       ellipse(x+8, y+8, 16, 16);
       fill(0);
       ellipse(x+8, y+8, 15*h, 15*h);*/
      //彩度
      /*float s=saturation(img.pixels[y*w+x])/255;
       fill(img.pixels[y*w+x]);
       ellipse(x+8, y+8, 16, 16);
       fill(0);
       ellipse(x+8,y+8,15*s,15*s);*/
      //明度 0=黒　1=白
      float b=brightness(img.pixels[y*w+x])/255;      
      fill(img.pixels[y*w+x]);
      ellipse(x+8, y+8, 16-2*b, 16-2*b);
      fill(0);
      ellipse(x+8, y+8, 15.5*(1-b), 15.5*(1-b));
    }
  }
  //image(img, w, 0);
}

void keyPressed() {
  save("pic2.png");
}

