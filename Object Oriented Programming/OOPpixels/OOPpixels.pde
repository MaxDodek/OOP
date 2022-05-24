//Max Dodek
//2.3
//May 18,2022

// 0 =transparency, he used variable a for transparency

int n;
Pixel [] p;
PImage ball;


void setup() {
  fullScreen();
  rectMode(CENTER);
  noStroke();


  ball=loadImage("mjp.jpg");
  image(ball, 0, 0, width, height);

  n =100;


  p = new Pixel[n];
  int i=0;
  while (i<n) {
    p [i]=new Pixel();
    i++;
  }
}

void draw() {
  image(ball, 0, 0, width, height);


  int i=0;
  while (i<n) {
    p [i].show();
    p [i].act();

    i++;
  }
}
