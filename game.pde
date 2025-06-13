void game() {
  background(58,134,84);
  theme.play();
    
    
  //line
  fill(226,247,67);
  strokeWeight(10);
  line(400,0,400,600);
  strokeWeight(5);
  
  //paddle 
  circle(leftx,lefty,leftd);
  circle(rightx,righty,rightd);
  
  //move paddle
  if( wkey== true) lefty=lefty-5;
  if(skey == true) lefty=lefty+5;
  if(lefty <100 ){
    lefty=100;
  }
  if(lefty>500) {
    lefty=height-100;
  }
  
  
  if(upkey == true) righty =righty-5;
  if(downkey == true) righty = righty+5;
  if(righty <100 ){
    righty=100;
  }
  if(righty>500) {
    righty=height-100;
  }
  
  //one player
  
  if(AI==false){
    if(upkey==true) righty=righty-5;
    if(downkey == true) righty=righty+5;
  }else{
    if(ballx>400){
      if(bally>righty) lefty=lefty+1;
      if(bally<righty) lefty=lefty-1;
    }
  }
  //ball
  circle(ballx,bally,balld);
  
  //ball movements
  if (timer<0){
  ballx= ballx+ vx;
  bally= bally+vy;
  }
  d=dist(leftx,lefty,ballx,bally);
  D=dist(rightx,righty,ballx,bally);
  r=leftd/2;
  R= balld/2;
  if(d<=r+R){
    vx=(ballx-leftx)/15;
    vy=(bally-lefty)/15;
    bump.rewind();
    bump.play();
}
  
  if(D<=r+R){
    vx=(ballx-rightx)/15;
    vy=(bally-righty)/15; 
    bump.rewind();
    bump.play(); 
  }
  
   if (bally<balld/2 || bally >= height-balld/2) {
    vy=vy*-1;
  }

   
  //score
  textSize(30);
  text("player1:",150,50);
  text("player2:",550,50);
  textSize(50);
  fill(0);
  text(leftscore,width/4,100);
  fill(0);
  text(rightscore,3*width/4,100);
  //text(timer,3*width/4,550);
   timer=timer-1;
  
  if(ballx<0) {
    rightscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
    text("player2",400,100);
  }
   if(ballx>800) {
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }
  
 
 
  if(leftscore>=3 ){
    mode=GAMEOVER;
  }
 if( rightscore>=3) {
   mode=GAMEOVER;
 }
 
 //pause
 pushStyle();
  fill(225);
   tactile(750,50,35);
  ellipse(750, 50, 70, 70);
  textSize(20);
  fill(0);
  text("Pause", 725, 55);
 popStyle();
  
}


void gameClicks() {
  println("gameClicks running");
 if (dist(mouseX, mouseY, 750, 50)<70) {
    mode = PAUSE;
  } 
}

void tactile(int x, int y, int r) {
  if (dist(mouseX, mouseY, 750, 50)<70) {
    stroke(255);
  } else {
    stroke(0);
  }
}
