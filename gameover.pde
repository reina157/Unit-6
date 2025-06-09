void gameover(){
  background(0);
  fill(225);
  if(leftscore>rightscore){
    text("PLAYER 2 WINS", 250,350);
    
  } else{
   text("PLAYER 1 WINS", 250,350); 
  }
}
    
void gameoverClicks() {
      mode= INTRO;
}
