class Ripple {
  float x, y, size;
  float o; //o = opacity
float hue;

  //constructor
  Ripple() { //why opacity not working
    x=random(width);
    y=random(height);
    size = random(1, 200);
    x=mouseX;
    y=mouseY;
    hue=random(0,255);
  }


  //behavior
  void show() {
    stroke(hue,255,255,o);
    ellipse(x, y, size, size/2);
  }

  void act () {
    o = map(size, 1, 200, 255, 0);//1,100= range of size, 255-0=range of 0 - this goes in this, no tconstructor

    size=size+0.5;

    if (size> 200) {
      o=255;
      size = 0;
      x=mouseX;
      y=mouseY;
    }
  }
}
