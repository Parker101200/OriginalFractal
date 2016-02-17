public void setup()
{
    size(900,900);
}
public void draw()
{
    background(0);
    fractal(450,450,200);
}
public void fractal(int x, int y, int siz)
{
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(x, y, x+siz/2, y+siz/2);
    if(siz>10)
    {
        fractal(x+siz,y+siz,siz/2);
        fractal(x-siz,y-siz,siz/4);
    }
}