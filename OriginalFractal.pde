public void setup()
{
  size(500,500);
  background(0);
  rectMode(CENTER);
}
public void draw()
{
  fractal(250,250,250);
}
public void fractal(int x, int y, int siz)
{
  noFill();
  ellipse(x,y,siz,siz);
  if (siz > 10)
  {
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    fractal(x-siz/2,y,siz/2);
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    fractal(x+siz/2,y,siz/2);
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    fractal(x,y-siz/2,siz/2);
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    fractal(x,y+siz/2,siz/2);
  }
}
