class lion 
{
  PVector position;
  PVector direction;
  color c;

  lion()
  {
    position= new PVector(400,400);
    direction= new PVector(4,0);
    
  }
  
  lion(float _nX, float _nY)
  {
    position = new PVector(_nX, _nY);
    direction = new PVector(random(-10,-7),random(-2,-1));
    c = color(random(255),random(255),random(234));
  }
  
  
  void update()
  {
    position.add(direction);
    direction.add(new PVector(0,0.2));
    fill(c);
    ellipse(position.x,position.y,random(10,15),random(1,3));
  }
  
}