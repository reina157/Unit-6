import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// june 12


//sound
Minim minim;
AudioPlayer theme,bump,gameover;

//entity varibles
float leftx, lefty, leftd, rightx, righty, rightd;  //padal
float ballx, bally, balld;  //ball
boolean AI;
boolean balldirection, nowballdirection;

// keyboard variables
boolean wkey,skey,upkey,downkey;

//variables
float vx,vy;
float d,r,R,D;
int leftscore,rightscore,timer;

//mode framework
int mode;
final int INTRO=1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER=4;


PImage trophy;
boolean trophyOn;

void setup(){
  size(800, 600);
  mode = GAME;
  
  trophy= loadImage("trophy.png");
  trophyOn=false;

  balldirection = vx >=0;
  nowballdirection = vx >=0;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  gameover = minim.loadFile("FAILURE.wav");
  bump = minim.loadFile("SUCCESS.wav");
  
  //inital paddle
  leftx=0;
  lefty=height/2;
  leftd= 200;
  rightx=width;
  righty=height/2;
  rightd=200;
  
  //intialize score
  rightscore=leftscore=0;
  timer=100;
  
  //intial ball
  ballx= width/2;
  bally=height/2;
  balld=100;
  
  //initalize keyboard 
  wkey= skey= upkey= downkey= false;
  
  // ball velocity
  vx= random(-7,7);
  vy= random (-7,7);
} 

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  } else {
    println("Mode errors:" + mode);
  }
}
