// june 2




//entity varibles
float leftx, lefty, leftd, rightx, righty, rightd;  //padal
float ballx, bally, balld;  //ball
//mode framework
int mode;
final int INTRO=1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER=4;

void setup(){
  size(800, 600);
  mode = INTRO;
  //inital paddle
  leftx=0;
  lefty=height/2;
  leftd= 200;
  rightx=width;
  righty=height/2;
  rightd=200;
  
  //intial ball
  ballx= width/2;
  bally=height/2;
  balld=100;
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
