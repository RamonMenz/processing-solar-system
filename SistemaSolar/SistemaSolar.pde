// An array of 4 planet objects
Planet[] planets = new Planet[3];

void setup() {
  size(480, 270);

  planets[0] = new Planet(
    60,
    24,
    color(78, 121, 167),
    new Moon[] {
      new Moon(20, 6, 0.045, color(210))
    }
  );

  // This planet has two moons with different distances and orbit speeds.
  planets[1] = new Planet(
    96,
    28,
    color(242, 142, 43),
    new Moon[] {
      new Moon(18, 5, -0.06, color(190)),
      new Moon(34, 9, 0.025, color(140))
    }
  );

  planets[2] = new Planet(
    132,
    20,
    color(89, 161, 79),
    new Moon[] {
      new Moon(16, 4, 0.08, color(230))
    }
  );
}

void draw() {
  background(255);

  // Drawing the Sun
  pushMatrix();
  translate(width/2, height/2);
  stroke(0);
  fill(255);
  ellipse(0, 0, 64, 64);

  // Drawing all Planets
  for (int i = 0; i < planets.length; i++ ) {
    planets[i].update();
    planets[i].display();
  }
  popMatrix();
}
