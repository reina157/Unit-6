void intro() {
  background(183,115,115);
  rect(200,400,200,100);
  tactile(200,400,200,100);
  text("1 PLAYER",200,500);
}

void introClicks() {
  if ( mouseX > 200 && mouseX< 400 && mouseY> 400 && mouseY< 500)
    mode = GAME;
}

void tactile(int x, int y, int w, int h) {
  if (mouseX>x && mouseX< x+w && mouseY>y && mouseY <y+h) {
    stroke(255);
  } else {
    stroke(0);
  }
}
