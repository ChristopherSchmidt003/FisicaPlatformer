void playerMovement() {
  
  //left, right movement
  vx = 0;
  if (akey) vx = -500;
  if (dkey) vx = 500;
  player1.setVelocity(vx, player1.getVelocityY());
  
  //jumping
  ArrayList<FContact> contacts = player1.getContacts();
  if (wkey && contacts.size() > 0) player1.setVelocity(player1.getVelocityX(), -500);
  
  //drop bombs
  if (spacekey && bomb == null) {
    bomb = new FBomb();
  }
  if (bomb != null) bomb.act();
  
  //death by orange
  
  
}
