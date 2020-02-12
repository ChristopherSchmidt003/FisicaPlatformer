class FBomb extends FBox{
  
  int timer;
  
  FBomb() {
    super(gridsize, gridsize); //Fbox constructor
    timer = 90;
    this.setFillColor(orange);
    this.setPosition(player1.getX()+gridsize, player1.getY()-gridsize/2);
    world.add(this);
  }
  
  void act() {
    timer--;
    if (timer == 0) {
      explode();
      world.remove(this);
      bomb = null;
    }
  }
  
  void explode() {
    for (int i = 0; i < boxes.size(); i++) {
      FBody b = boxes.get(i);
      if (dist(this.getX(), this.getY(), b.getX(), b.getY()) < 200) {
        float vx = (b.getX() - this.getX())*10;
        float vy = (b.getY() - this.getY())*10;
        b.setVelocity(vx, vy);
        b.setStatic(false);
      }
    }
  }
  
}
