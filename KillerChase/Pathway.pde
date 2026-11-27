class Pathway {
  PVector location;
  PVector velocity;
  PVector location2;
  float size1;
  float size2;
  int spawnTime1;
  int spawnTime2;
  int rocks;
  int boldrs;
  
  
  Pathway() {
    location = new PVector(0,0);
    location2 = new PVector(width, 0);
    velocity = new PVector(0, 3);
    spawnTime1 = 100;
    spawnTime2 = 20;
    rocks = 0;
    boldrs = 0;
    pebl = loadImage("pebble.png");
  }
  
  void setBoulders(int time, float speed, FloatList boldLoc, PImage boldr) {
    boldr.resize(200, 200);
    if (time > spawnTime2) {
      boldLoc.set(boldrs, height+100);
      spawnTime2 += 15;
      boldrs++;
    }
    for (int ig = 0; ig < boldLoc.size(); ig++) {
      image(boldr, width, boldLoc.get(ig));
      image(boldr, 0, boldLoc.get(ig));
      boldLoc.sub(ig, speed);
      if(boldLoc.get(ig) < -100) {
        boldLoc.remove(ig);
      }
    }
  }
  
  void setRocks(int time, FloatList rockLoc, FloatList rockPos, PImage pebl, float speed) {
    if (time > spawnTime1) {
      rockLoc.set(rocks, height);
      rockPos.set(rocks, random(30,width-30));
      spawnTime1 += 100;
      rocks++;
    }
    for (int ig = 0; ig < rockLoc.size(); ig++) {
      image(pebl, rockPos.get(ig), rockLoc.get(ig));
      rockLoc.sub(ig, speed);
    }
    
    
  }
  
 
}
