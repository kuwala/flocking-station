// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Flock class
// Does very little, simply manages the ArrayList of all the boids

class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids

  Flock() {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
  }

  void run() {
    for (Boid b : boids) {
      b.run(boids);  // Passing the entire list of boids to each boid individually
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }
  void clearBoids() {
    boids.clear();
  }
  void addLotsOfBoids(int howMany, int x, int y) {
    for(int i = 0; i < howMany; i ++) {
      boids.add(new Boid(x, y) );
    }
  }
  void setMaxSpeed(float maxSpeed) {
    int size = boids.size();
    if(size > 0) {
      for(int i = 0; i < size; i ++) {
        boids.get(i).maxspeed = maxSpeed;
      }
    }
  }

}
