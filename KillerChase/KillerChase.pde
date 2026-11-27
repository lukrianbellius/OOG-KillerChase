// For the Object Oriented Game, Killer Chase!!
//float current = 0;
int time = 0;
float speedMove = 3;
FloatList rockLocTemp = new FloatList();
FloatList rockPosTemp = new FloatList();
FloatList boldLocTemp = new FloatList();
PImage pebl;
PImage boldr;
Pathway path;

void setup() {
  //For now, may change size later
  size(400,400);
  path = new Pathway();
  background(147,109,74);
  pebl = loadImage("pebble.png");
  pebl.resize(40, 40);
  boldr = loadImage("boulder.png");
}


void draw() {
  imageMode(CENTER);
  //image(pebl, 200, 200);
  time += 1;
  background(147,109,74);
  path.setRocks(time, rockLocTemp, rockPosTemp, pebl, speedMove);
  path.setBoulders(time, speedMove, boldLocTemp, boldr);
  //println(frameCount);
}
