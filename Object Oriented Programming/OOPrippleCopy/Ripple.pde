class Ripple {
  float x, y, size;
  float o; //o = opacity
  float hue;
  int vx;
  int vy;
  //constructor
  Ripple() { //why opacity not working //Make Sure with him doing correct***
    x=random(width);
    y=random(height);
    size = random(1, MaxSize);
    x=width/2;
    y=height/2;
    hue=random(0, 255);
    vx=0;
    vy=5;
  }


  //behavior
  void show() {
    stroke(hue, 255, 255, o);

    ellipse(x, y, size, size/2);
  }

  void act () {
    o = map(size, 1, 200, 255, 0);//1,100= range of size, 255-0=range of 0 - this goes in this, no tconstructor

    size=size+0.5;

    x= x+vx;
    y= y+vy;
    if (y>height) y=0;

    //if (size> 200) {
    //  o=255;
    //  size = 0;
    //  x=mouseX;
    //  y=mouseY;
    //}
  }
  boolean isDead() {
    if (size>= MaxSize) {//fin
      return true;
    } else {
      return false;
    }
  }
}
