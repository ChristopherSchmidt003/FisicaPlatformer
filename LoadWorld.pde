void loadWorld() {
  
  map = loadImage("map5.png");
  
  //load the world
  while (y < map.height) {  //keep going until we get to the
                            //end of the map image
                           
    color c = map.get(x,y); //get a pixel's color from the map
    
    if (c == red) {         //process colors into boxes
      player1 = new FBox(gridsize, gridsize);
      player1.setFillColor(red);
      player1.setPosition(x*gridsize*0.8,y*gridsize*0.8);
      player1.setStatic(false);
      world.add(player1);
      boxes.add(player1);
    }
    if (c == black){
      FBox b = new FBox(gridsize, gridsize);
      b.setFillColor(black);
      b.setPosition(x*gridsize,y*gridsize);
      b.setStatic(true);
      world.add(b);
      //boxes.add(b);
    }
    if (c == green){
      FBox b = new FBox(gridsize, gridsize);
      b.setFillColor(green);
      b.setPosition(x*gridsize,y*gridsize);
      b.setStatic(true);
      world.add(b);
      boxes.add(b);
    }
    if (c == blue){
      FCircle b = new FCircle(gridsize);
      b.setFillColor(blue);
      b.setPosition(x*gridsize,y*gridsize);
      //b.setRestitution(1.2);
      b.setStatic(false);
      world.add(b);
      boxes.add(b);
    }
    if (c == orange){
      FBox b = new FBox(gridsize, gridsize);
      b.setFillColor(orange);
      b.setPosition(x*gridsize,y*gridsize);
      b.setStatic(true);
      world.add(b);
      hazard.add(b);
    }
    //if (c == orange) {
    //  //FCircle b = new FCircle(gridsize);
    //  FBox b = new FBox(x*gridsize,y*gridsize);
    //  b.setFillColor(orange);
    //  b.setPosition(x*gridsize,y*gridsize);
    //  b.setStatic(false);
    //  world.add(b);
    //  boxes.add(b);
    //}
    
    x++;                    //move down the row
    
    if (x == map.width) {   //if we get to the end of the row
      x = 0;                // then go back to the beginning
      y++;                  // and down to the next row
    }
  }
}
