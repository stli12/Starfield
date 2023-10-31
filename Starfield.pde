Particle [] bob;
void setup()
{
  size(500,500);
   bob = new Particle[300];   
   for(int i=10; i < bob.length; i++)
   bob[i] = new Particle();
   for(int i = 0; i<10; i++)
   bob[i] = new Square();
}
void draw()
{
  background(0);
  for(int i=0; i < bob.length; i++){
    bob[i].move();
    bob[i].show();
}
}
void mousePressed()
{
  redraw();
}


class Particle{
  int   getcolorR, getcolorG, getcolorB;
  double myAngle, mySpeed, vertical, horizontal ,myX,myY, myHeight, myWidth;
  Particle(){
  myX = 250;
  myY = 250;
  myHeight = 10;
  myWidth = 10;
  myAngle = (double)(Math.random()*(2*Math.PI));
  mySpeed = (double)(Math.random()*10)+1;
  getcolorR = (int)(Math.random()*120)+100;
  getcolorG = (int)(Math.random()*120)+100;
  getcolorB = (int)(Math.random()*120)+100;
  }

   void move()
  {
  horizontal = Math.cos(myAngle) * mySpeed;
  vertical = Math.sin(myAngle) * mySpeed;
  myX = myX +  horizontal;
  myY = myY + vertical;
     
  }
  
  void show()
  {
    fill(getcolorR,getcolorG,getcolorB);
    ellipse((float)myX,(float)myY,(float)myHeight,(float)myWidth);
  }
}
class Square extends Particle
{
  Square(){
  myX = 250;
  myY = 250;
  myHeight = 100;
  myWidth = 100;
  myAngle = (double)(Math.random()*(2*Math.PI));
  mySpeed = (double)(Math.random()*2)+1;
  getcolorR = (int)(Math.random()*255);
  getcolorG = (int)(Math.random()*255);
  getcolorB = (int)(Math.random()*255);
  
}
}
