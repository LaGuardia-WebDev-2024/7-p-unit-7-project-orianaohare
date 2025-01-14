// Setup Procedure - Runs Once to Set the Canvas
void setup() {
  size(400, 400);
}

// Variables for animations
var fireworkX = 20;
var fireworkSize = 20;
var fireworkColor;

// Draw Procedure - Runs on Repeat
void draw() {
  // Background with fade effect
  background(0, 0, 0, 20);

  // Change firework color to random hot pink shades
  fireworkColor = color(random(200, 255), random(100, 150), random(200, 255));
  fill(fireworkColor);

  // Draw firework (circle)
  ellipse(fireworkX, 200, fireworkSize, fireworkSize);

  // Animate firework position and size
  fireworkX += 2;
  fireworkSize = 20 + sin(frameCount * 0.1) * 10;

  // Reset firework position if it moves off-screen
  if (fireworkX > width) {
    fireworkX = -fireworkSize;
  }
}


