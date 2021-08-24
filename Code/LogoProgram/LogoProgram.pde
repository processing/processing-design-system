import processing.svg.*;

/**
* This Processing sketch can be used to generate logos and characters in both SVG and PNG format.
*
* - When sketching your new icon, you can use the first size() function in order to see everything on the screen.
* - When generating an SVG, use the second size() command and uncomment the exit() function 
* - When generating a PNG, use the third size() command and uncomment the exit() function
* 
* Remember that the showGrid boolean should be false when generating images.
*
* After generating an image, copy/paste the result to the correct folder in this repo.
**/

boolean showGrid = false;

void setup() {

  // This is for debugging
  size(480, 480);

  // Uncomment when saving as a SVG
  //size(480, 480, SVG, "filename.svg");

  // Uncomment when saving as a PNG
  //size(3600, 3600);
}

void draw() {

  int u = width / 8;

  background(255);
  if (showGrid) drawGrid();
  strokeCap(SQUARE);
  strokeWeight(1.5 * u);

  stroke(5, 100, 255);
  bezier(4 * u, 1 * u, 7 * u, 1 * u, 7 * u, 5 * u, 4 * u, 5 * u);

  stroke(30, 50, 170);
  line(1 * u, 6 * u, 4 * u, 2 * u);

  stroke(130, 175, 255);
  line(1 * u, 3 * u, 2 * u, 5 * u);

  // This is for saving as a PNG
  //save("filename.png");
  
  // Uncomment this when saving SVG or PNG
  // exit();
}

void drawGrid() {

  int u = width / 8;

  strokeWeight(1);
  noFill();
  stroke(200);
  for (int col = 0; col < 9; col++) {
    line(col * u, 0, col * u, 8 * u);
  }
  for (int row = 0; row < 9; row++) {
    line(0, row * u, 8 * u, row * u);
  }
}
