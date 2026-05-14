//Bryn Jensen
//2-1
//Pong!
//Add intro screen
//7J
//make intro buttons do single/double

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//COLOUR PALLETTE
color black = #000000;
color olive = #606c38;
color green = #283618;
color white = #fefae0;
color tan = #dda15e;
color brown = #bc6c25;

//SOUND VARIABLES
Minim minim;
//AudioPlayer ;

//MODE FRAMEWORK
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//ENTITY VARIABLES
float leftx, lefty, leftd, rightx, righty, rightd; //PADDLES
float ballx, bally, balld; //BALL
float vx, vy, a; //BALL VELOCITY

//KEYBOARD VARIABLES
boolean wkey, skey, upkey, downkey;

//SCORING
int leftscore, rightscore, timer = 100, counter = 0;

void setup() {
  size(1000, 800, P2D);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  imageMode(CENTER);

  //MINIM
  minim = new Minim(this);

  //ENTITY INITIALIZATION
  //L & R PADDLES
  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;

  //BALL
  ballx = width/2;
  bally = height/2;
  balld = 100;

  //KEYBOARD VARIABLES INITIALIZATION
  wkey = skey = upkey = downkey = false;
  
  //BALL VELOCITY INITIALIZATION
  a = random(0, 2*PI);
  vx = 8*cos(a);
  vy = 8*sin(a);
  
  //FONT LOADING
  PFont font = createFont("Strong.ttf", 200);
  textFont(font);
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
