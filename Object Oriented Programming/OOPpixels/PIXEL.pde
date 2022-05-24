class Pixel { //think about making size proportional to distance
  int  x, y;
  color c;
  float size;

  Pixel() {
    x= (int)random(0, width);
    y= (int)random(0, height);
    c= get(x, y); //Get Function = ***??????***
    size =100;
    
  }

  //behavior
  void show() {
    fill(c);
    square(x, y, size);
  }

  void act () {
size = (int)dist(mouseX, mouseY,x,y)/10;  

  }
}
