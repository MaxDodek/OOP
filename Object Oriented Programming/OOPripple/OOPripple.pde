//Max Dodek
//2.3
//May 18,2022

// 0 =transparency, he used variable a for transparency

int n;
Ripple [] ripples;

void setup() {
fullScreen();
noFill();

  colorMode(HSB);

  n =100;


  ripples = new Ripple[n];
  int i=0;
  while (i<n) {
    ripples [i]=new Ripple();
    i++;
  }
}

void draw() {
  background(0);
  int i=0;
  while (i<n) {
    ripples [i].show();
    ripples [i].act();

    i++;
  }
}
