// For the Object Oriented Game, Killer Chase!!
float current = 0;
float speedMove = 3;
Pathway path;

void setup() {
  //For now, may change size later
  size(400,400);
  path = new Pathway();
  background(147,109,74);
}


void draw() {
  background(147,109,74);
  path.setBoulders(current);
  current -= speedMove;
  path.setRocks(frameCount);
  
  
}
