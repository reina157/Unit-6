void gameover(){
  fill(225);
  textSize(50);
  theme.pause();
  if(leftscore>rightscore){
    text("PLAYER 1 WINS!", 250,250);
    
  } else{
   text("PLAYER 2 WINS!", 250,250); 
  }
  
 
  image(trophy,250,300,300,300);
  
  
}
    
void gameoverClicks() {
      mode= INTRO;
      leftscore=0;
    rightscore=0;
      theme.rewind();
}
