Particle[] bob = new Particle[1000];
void setup()
{
  size(400,400);
  for(int x = 0; x < 50; x++)
    bob[x] = new OddballParticle();
  for(int x = 50; x < bob.length; x++)
    bob[x] = new Particle();
}
void draw()
{
  background(0, 0, 0);
  for(int x = 0; x < bob.length; x++){
    bob[x].show();
    bob[x].move();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  Particle(){
    myX = width/2;
    myY = height/2;
    myAngle = (double)(Math.random()*2*Math.PI);
    mySpeed = (double)(Math.random()*10);
  }
  void show() {
    ellipse((float)myX, (float)myY, (float)3, (float)3);
  }
  void move() {
    myX = myX + Math.cos(myAngle)*mySpeed;
      if(myX > 950)
        myX = -150;
    myY = myY + Math.sin(myAngle)*mySpeed;
      if(myX > 950)
        myX = -150;
  }
}
class OddballParticle extends Particle
{
  OddballParticle(){
    myX = width/2;
    myY = height/2;
    myAngle = (int)(Math.random()*2)*Math.PI;
    mySpeed = (int)(Math.random()*15)-5;
  }
}
