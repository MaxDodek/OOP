//Max Dodek
//2.3
//May 17,2022

int n;
Mover [] movers;

void setup() {
  size(800, 800);

  colorMode(HSB);

  n =100;
  

  movers = new Mover[n];
  int i=0;
  while (i<n) {
    movers [i]=new Mover();
    i++;
  }
}

void draw() {
  int i=0;
  while (i<n) {
    movers [i].show();
    movers [i].act();

    i++;
  }
}
