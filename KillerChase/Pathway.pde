class Pathway {
  PVector location;
  PVector velocity;
  PVector location2;
  float size1;
  float size2;
  float[] sizes = new float[1000];
  float[] sizes2 = new float[1000];
  int spawnTime;
  int rocks;
  
  Pathway() {
    location = new PVector(0,0);
    location2 = new PVector(width, 0);
    velocity = new PVector(0, 3);
    for(int ig = 0; ig < sizes.length; ig++) {
      sizes[ig] = random(40, 80);
      sizes2[ig] = random(40, 80);
    }
    spawnTime = 100;
    rocks = 0;
  }
  
  void setBoulders(float currentLoc) {
    for(int i = 0; i < sizes.length; i++) {
      ellipse(location.x,currentLoc, sizes[i], sizes[i]);
      ellipse(location2.x, currentLoc, sizes2[i], sizes2[i]);
      currentLoc += 20;
      currentLoc += 20;
      location.add(velocity);
      location2.add(velocity);
    }
  }
  
  void setRocks(int time) {
    FloatList rockLoc = new FloatList();
    if (time > spawnTime) {
      rockLoc.set(rocks, random(30,width-30));
      spawnTime += 100;
      rocks++;
    }
    for (int ig = 0; ig < rockLoc.size(); ig++) {
      ellipse(rockLoc.get(ig), height, 10, 10);
      rockLoc.sub(ig, 3);
    }
    
    
  }
  
  
  
  
}
