import fisica.*;

color black = color(0, 0, 0);
color green = color(34, 177, 76);
color blue  = color(63, 72, 204);
color red   = color(237, 28, 36);
color orange= color(255,127,39);

PImage map;
int x = 0;
int y = 0;
int gridsize = 25;
float vx;

//boolean inputs
boolean wkey, akey, skey, dkey, spacekey;

ArrayList<FBody> boxes = new ArrayList<FBody>();
ArrayList<FBody> hazard= new ArrayList<FBody>();

FWorld world;
FBox player1;
FBomb bomb = null;


void setup() {
  Fisica.init(this);
  world = new FWorld(-1000,-1000,10000,10000);
  world.setGravity(0, 900);
  
  size(1200, 800);
  
  loadWorld();
  
}

void draw() {
  background(255);
  
  pushMatrix(); //camera on player 1
  translate(-player1.getX() + width/2, -player1.getY() + height/2);
  world.step();
  world.draw();
  popMatrix();
  
  playerMovement();
}



void keyPressed() {
  if (key == 'W' || key == 'w' ) wkey = true;
  if (key == 'S' || key == 's' ) skey = true;
  if (key == 'A' || key == 'a' ) akey = true;
  if (key == 'D' || key == 'd' ) dkey = true;
  if (key == ' ') spacekey = true;
  //if (keyCode == UP) upkey = true;
  //if (keyCode == DOWN) downkey = true;
  //if (keyCode == LEFT) leftkey = true;
  //if (keyCode == RIGHT) rightkey = true;
}

void keyReleased() {
  if (key == 'W' || key == 'w' ) wkey = false;
  if (key == 'S' || key == 's' ) skey = false;
  if (key == 'A' || key == 'a' ) akey = false;
  if (key == 'D' || key == 'd' ) dkey = false;
  if (key == ' ') spacekey = false;
  //if (keyCode == UP) upkey = false;
  //if (keyCode == DOWN) downkey = false;
  //if (keyCode == LEFT) leftkey = false;
  //if (keyCode == RIGHT) rightkey = false;
}
