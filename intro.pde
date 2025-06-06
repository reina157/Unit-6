void intro() {
  background(183,115,115);
  fill(64,80,75);
  rect(100,400,200,100);
  tactile(100,400,200,100);
  strokeWeight(5);
  fill(0);
  textSize(40);
  text("1 PLAYER",120,460);

}

void introClicks() {
  if ( mouseX > 100 && mouseX< 300 && mouseY> 400 && mouseY< 500)
    mode = GAME;
}

void tactile(int x, int y, int w, int h) {
  if (mouseX>x && mouseX< x+w && mouseY>y && mouseY <y+h) {
    strokeWeight(5);
    stroke(255);
  } else {
    stroke(0);
  }
}
