class Star {
  
  //instance variables
  float x, y;
  float vx, vy;
  float size;


  //consturctor - setup for each instance variable (constructs our star). Can't have void, must have name of class, and then brackents and {
  Star() {
    x=random(0, width);
    y=random(0, height);
    vx = 0;
    vy = 5;
    size= random(5,10);
  }

  void show() {
    fill(255);
    square (x,y, size);
  }


  void act() {
    x= x+vx;
    y= y+vy;
    if (y>height) y=0;
  }
  
   void bounce(){
     
     
   }
   
   void shakeup(){
     
     
   }
}
