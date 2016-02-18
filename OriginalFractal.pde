int increase = 0;
public void setup()
{
    size(900,900);
}
public void draw()
{
    background(0);
    fractal(450,450,200+increase);
    increase+=10;
    if(increase>900)
    {
        increase*=1.01;
    }
}
public void fractal(int x, int y, int siz)
{
    strokeWeight(0.5);
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(x, y, siz, siz);
    if(siz>30)
    {
        fractal(x-siz/3,y,siz/2);
        fractal(x,y,siz/4);
        fractal(x,y-siz/3,siz/4);
        fractal(x+siz/3,y,siz/2);
        fractal(x,y+siz/3,siz/4);
    }
}