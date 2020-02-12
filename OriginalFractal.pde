int len = 160;

public void setup(){
  size(500, 500);

}

public void draw(){
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  stroke(-100);
  fractal(125,250,250);
}

public void fractal( int x, int y, int len){
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  triangle(x, y, x + len/2, y - len, x + len, y);
  if(len > 20)
  {
    fractal(x - len/4, y + len/2, len/2);
    fractal(x + len, y, len/2);
    fractal(x + len/2, y - len, len/2);
    fractal(x + (4*len)/5, y + len/2, len/2);
  }
}
