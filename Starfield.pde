Particle[] particles;

void setup()
{
  //your code here
  size(1000,1000);
  background(0);
  particles = new Particle [520];
  for(int i = 0; i < particles.length; i++){
    particles[i] = new Particle();
  }
  particles[0] = new OddballParticle();
}
void mousePressed() {
  particles = new Particle [500];
  for(int i = 0; i < particles.length; i++){
    particles[i] = new Particle();
  }
  particles[0] = new OddballParticle();
}
void draw()
{
  //your code here
  background(0);
  for(int i = 0; i < particles.length; i++){
    particles[i].show();
    particles[i].move();
  }
  
}
class Particle
{
  double myX, myY, angle, speed;
  int col, size;
  double getMyX() {
    return myX; 
  }
  double getMyY() {
    return myY;
  }
  //your code here
  public Particle() {
    myX = 500;
    myY = 500;
    size = (int)(Math.random()*5);
    angle = Math.random()*(2*Math.PI);
    speed = (float)(Math.random()*20)/size;
  }
  public void move() {
     myX += Math.cos(angle) * speed;
     myY += Math.sin(angle) * speed;
  }
  public void show() {
    col = color(255);
    ellipse((float)myX, (float)myY, size, size);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  //your code here
  void show() {
    col = color(0, 104, 208);
    ellipse((float)myX, (float)myY, size*8, size*8);

  }
  void move() {
    myX += speed*size;
    myY = 500 ;
     if(myX > 1000){
       myX = 0; 
       myY = 500;
     }
  }
}
