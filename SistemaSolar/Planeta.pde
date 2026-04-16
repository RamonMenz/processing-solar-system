class Planet {
  // Each planet object keeps track of its own angle of rotation.
  float theta;      // Rotation around sun
  float diameter;   // Size of planet
  float distance;   // Distance from sun
  float orbitspeed; // Orbit speed
  int planetColor;  // Planet color
 
  // Each Planet contains one or more moons.
  Moon[] moons;
 
  
  Planet(float distance_, float diameter_, int planetColor_, Moon[] moons_) {
    distance = distance_;
    diameter = diameter_;
    planetColor = planetColor_;
    moons = moons_;
    theta = 0;
    orbitspeed = random(0.01,0.03);
  }
  
  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;

    for (int i = 0; i < moons.length; i++) {
      moons[i].update();
    }
  }
  
  void display() {
    // Before rotation and translation, the state of the matrix is saved with pushMatrix().
    pushMatrix(); 
    // Rotate orbit
    rotate(theta); 
    // translate out distance
    translate(distance,0); 
    stroke(0);
    fill(planetColor);
    ellipse(0,0,diameter,diameter);

    // The planet is drawn, now draw all moons.
    for (int i = 0; i < moons.length; i++) {
      moons[i].display();
    }
    
    // Once the planet is drawn, the matrix is restored with popMatrix() so that the next planet is not affected.
    popMatrix(); 
  }
}