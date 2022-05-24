//Max Dodek
//2.3
//May 18,2022

// 0 =transparency, he used variable a for transparency

int n;
//Ripple [] ripples;
ArrayList<Ripple> ripples; 
int MaxSize;


void setup() {
  fullScreen();
  colorMode(HSB);
  textAlign(CENTER, CENTER);
  noFill();

  colorMode(HSB);

  n =100;


  //ripples = new Ripple[n];
  ripples = new ArrayList<Ripple>();//()??
  MaxSize=50;
  

  //int i=0;
  //while (i<n) {
  //  ripples.add (new  Ripple());//confirm what is***
  //  i++;
  //}
}

void draw() {
  ripples.add (new  Ripple());
  background(0);
  int i=0;
  while (i<ripples.size()) {
    Ripple r = ripples.get(i);
    r.show();
    r.act();
    if (r.isDead()) {
      ripples.remove(i);
    } else {
      i++;
    }
  }

  textSize(100);
  text(ripples.size(), width/2, height/2);
}
