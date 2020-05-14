HLine h1 = new HLine(100,5); 
HLine h2 = new HLine(200,25); 
Balls Balls = new Balls();
 
void setup() 
{
  size(800, 800);
  frameRate(5);
}

void draw() { 
  background(222,129,44);
  h1.update(); 
  h2.update();
  Balls.Ball();
} 
 
class HLine { 
  float ypos, speed; 
  HLine (float y, float s) {  
    ypos = y; 
    speed = s; 
  } 
  void update() { 
    ypos += speed; 
    if (ypos > height) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 
  } 
} 
