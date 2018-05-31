class drag
{
  PVector position;
  PVector direction;
  color c;

  drag()
  {
    position= new PVector(400,400);
    direction= new PVector(4,0);
    
  }
  
  drag(float _nX, float _nY)
  {
    position = new PVector(_nX, _nY);
    direction = new PVector(random(-10,-6),random(8,-5));
    c = color(random(111,255),0,0);
  }
  
  
  void update()
  {
    position.add(direction);
    direction.add(new PVector(0,0.2));
    fill(c);
    ellipse(position.x,position.y,random(0,15),random(0,15));
  }
  
}