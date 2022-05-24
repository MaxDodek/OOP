//Max Dodek
//variables
int n =500;
Star [] stars;

//colour code
color yellow = #D6FF00;
color lightblue = #3F636F;
color green = #A9C22C;
color darkblue = #4C575A;
color black = #000000;
color white= #FFFFFF;
color grey = #4D4E48;

void setup() {
  size(800, 800);

  stars = new Star[n];
  int i=0;
  while (i<n) {
    stars [i]=new Star();
    i++;
  }
}

void draw() {
  background(black);
  int i=0;
  while (i<n) {
    stars [i].show();
    stars [i].act();

    i++;
  }
}
