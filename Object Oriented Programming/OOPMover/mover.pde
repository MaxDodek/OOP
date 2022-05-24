class Mover {
  float x, y, vx, vy;
  float hue;
  float size;


  //constructor
  Mover() {
    x=random(0, width);
    y=random(0, height);
    vx = random(0, 5);
    vy = random(0, 5);

    //vx =  5;
    //vy = 5;
    hue =random(0, 255);
    size= random(10, 50);
  }


  //behavior
  void show() {
    fill(hue, 255, 255);
    circle(x, y, size);
  }
  void act () {
    hue=(hue+5)%255;// % 255: makes it so if it goes 255, it goes back to less than 255
    x= x+vx;
    y= y+vy;

    if (y+size/2>height||y-size/2<0) {
      vy=vy*-1;
    }
    if (x+size/2>width||x-size/2<0) {
      vx=vx*-1;
    }
  }
}
