int startX = 150;
int startY = 0;
int endX = 150;
int endY = 50;
void setup()
{
  size(300,300);
  background(10,10,50);
  strokeWeight(3);
}
void draw()
{
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  while(endX < 300) {
    endX = startX + (int)((Math.random()-0.5)*20);
    endY = startY + (int)(Math.random()*15);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  double a = Math.random();
  if(a>0.9) {
    background(135,206,240);
    fill(255,255,0);
    ellipse(50,50,50,50);
    System.out.println("It's a nice day!");
  }
  else {
    background(10,10,50);
    startX = 150;
    startY = 0;
    endX = 150;
    endY = 50;
    System.out.println("It's stormy.");
  }
}
