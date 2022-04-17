// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Demonstration of Craig Reynolds' "Flocking" behavior
// See: http://www.red3d.com/cwr/
// Rules: Cohesion, Separation, Alignment

// Click mouse to add boids into the system

Flock flock;
int isPaused = 1;

void setup() {
  //size(900,900, P2D);
  //size(4096, 2160, P2D);
  //size(8192, 4320, P2D); // ?lotsa k? 8k?
  size(4069, 4320, P2D); // ?lotsa k? 1/2*8k?
  


  //size(900,900, P2D);
  //fullScreen();
  flock = new Flock();
  frameRate(30);
  // Add an initial set of boids into the system
  for (int i = 0; i < 600; i++) {
    Boid b = new Boid(width/2,height/2);
    flock.addBoid(b);
  }
  background(0);
}
void keyPressed() {
  if( key == 'p' ) {
    if(isPaused == 1) {
      isPaused = 0;
    }else{
      isPaused = 1;
    }
  }
  if (key == ' ') {
    flock.clearBoids();
  }
  if (key == '1') {
    flock.setMaxSpeed(3); 
  }
  if (key == '2') {
    flock.setMaxSpeed(12);
  }
  if (key == '3') {
    flock.setMaxSpeed(44);
  }
  if (key == '4') {
    flock.setMaxSpeed(88);
  }
  if (key == '5') {
    flock.setMaxSpeed(888);
  }
  if (key == '6') {
    flock.setMaxSpeed(88888);
  }
  if (key == '7') {
    flock.setMaxSpeed(888888888);
  }
}

void mousePressed() {
   //flock.clearBoids();
   flock.addLotsOfBoids(3 + (int)random(100), mouseX, mouseY);
}

void draw() {
  int r = round(random(0));
  //println(r);
  color col = color(0,0,0, 3 + r);
  fill(col);
  rect(0,0,width, height);
  if(isPaused == 1 ) {
    //background(0,0,0,1);
    flock.run();
  }
  
  // I want Pausing the sim
  // Colmbing the sim units that are paused with a rake.
  
  
  // Instructions
  fill(0);
  text("Drag the mouse to generate new boids.",10,height-16);
}

// Add a new boid into the System
void mouseDragged() {
  //flock.addBoid(new Boid(mouseX,mouseY));
 
}
