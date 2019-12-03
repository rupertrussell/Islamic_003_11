// Rupert Russell
// 3 June 2018
// Draw a 10 Pointed star design
// Page 207 in Islamic Geometric design (big book) by Eric Broug

//https://web.archive.org/web/20150523075408/http://www.thelck.com:80/patterns/tenPointStar.html


float xCenter = 300;
float yCenter = 300;

float scale = 550;

float[] outerX; // store xPoints for the 10 points on the outer circle
float[] outerY; // store yPoints for the 10 points on the outer circle

float[] innerX;
float[] innerY;

float[] innerMostX;
float[] innerMostY;

void setup() {
  size(600, 600); // width x height
  smooth();
  noFill();
  rectMode(CENTER);
  ellipseMode(CENTER);

  outerX = new float[10]; // store x Points for the 10 points on the outer circle
  outerY = new float[10]; // store y Points for the 10 points on the outer circle

  innerX = new float[360]; // store x Points for the 10 points on the outer circle
  innerY = new float[360]; // store y Points for the 10 points on the outer circle

  innerMostX = new float[360]; // store x Points for the 10 points on the outer circle
  innerMostY = new float[360]; // store y Points for the 10 points on the outer circle
  noLoop();
}

void draw() {
 // strokeCap(PROJECT);
//  strokeJoin(MITER);
  background(255);
  translate(xCenter, yCenter);
  calculateNPoints(10, 0.5);

  float innerScale = 0.589;
  calculateNinnerPoints(80, innerScale /2);

  float innerMost = 0.171; 
  calculateNinnerMostPoints(20, innerMost /2);
  drawStar();
}


void calculateNPoints(float numPoints, float scaleFactor) {
  // calculate and store n points around the outer circle
  int counter = 0;
  double step = radians(360/numPoints); 
  float h = 0; 
  float k = 0;
  float r =  scale * scaleFactor ;
  for (float theta=0; theta < 2 * PI; theta += step) {
    float x = h + r * cos(theta);
    float y = k - r * sin(theta); 

    // store the calculated coordinates
    outerX[counter] = x;
    outerY[counter] = y;
    counter ++;
  }
} // end  calculateNPoints


void calculateNinnerPoints(float numPoints, float scaleFactor) {
  // calculate and store n points around the outer circle
  int counter = 0;
  double step = radians(360/numPoints); 
  float h = 0; 
  float k = 0;
  float r =  scale * scaleFactor ;
  for (float theta=0; theta < 2 * PI; theta += step) {
    float x = h + r * cos(theta);
    float y = k - r * sin(theta); 

    // store the calculated coordinates
    innerX[counter] = x;
    innerY[counter] = y;
    counter ++;
  }
} // end  calculateNinnerPoints


void calculateNinnerMostPoints(float numPoints, float scaleFactor) {
  // calculate and store n points around the outer circle
  int counter = 0;
  double step = radians(360/numPoints); 
  float h = 0; 
  float k = 0;
  float r =  scale * scaleFactor ;
  for (float theta=0; theta < 2 * PI; theta += step) {
    float x = h + r * cos(theta);
    float y = k - r * sin(theta); 

    // store the calculated coordinates
    innerMostX[counter] = x;
    innerMostY[counter] = y;
    counter ++;
  }
} // end  calculateNinnerMostPoints

void drawStar() {
  for (int count = 0; count < 5; count ++) {
    drawLines();
    rotate(radians(36));
  }
} // end drawStar


void mousePressed() {
  scale = 1200; // scale of bounding square
}

void mouseReleased() {
  scale = 500; // scale of bounding square
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    save("Islamic_003_11.png"); 
    exit();
  }
}

void drawLines() {

  for (float counter = 0; counter < 1; counter = counter + 10) {

    strokeWeight(1);
    stroke(0);

println(counter);


    //// East
    //line(outerX[5] + counter, outerY[5], innerX[51] + counter, innerY[51]);
    //line(outerX[5] + counter, outerY[5], innerX[29] + counter, innerY[29]);

    //line(outerX[0] + counter, outerY[0], innerX[69] + counter, innerY[69]);
    //line(outerX[0] + counter, outerY[0], innerX[11] + counter, innerY[11]);

    //line(innerX[51] + counter, innerY[51], innerMostX[15] + counter, innerMostY[15]);
    //line(innerX[29] + counter, innerY[29], innerMostX[5] + counter, innerMostY[5]);

    //line(innerX[69] + counter, innerY[69], innerMostX[15] + counter, innerMostY[15]);
    //line(innerX[11] + counter, innerY[11], innerMostX[5] + counter, innerMostY[5]);

    ////West
    //line(outerX[5] + counter, outerY[5], innerX[51] + counter, innerY[51]);
    //line(outerX[5] + counter, outerY[5], innerX[29] + counter, innerY[29]);

    //line(outerX[0] + counter, outerY[0], innerX[69] + counter, innerY[69]);
    //line(outerX[0] + counter, outerY[0], innerX[11] + counter, innerY[11]);

    //line(innerX[51] + counter, innerY[51], innerMostX[15] + counter, innerMostY[15]);
    //line(innerX[29] + counter, innerY[29], innerMostX[5] + counter, innerMostY[5]);

    //line(innerX[69] + counter, innerY[69], innerMostX[15] + counter, innerMostY[15]);
    //line(innerX[11] + counter, innerY[11], innerMostX[5] + counter, innerMostY[5]);



    //South
    line(outerX[5], outerY[5] - counter, innerX[51], innerY[51] - counter);
    line(outerX[5], outerY[5] - counter, innerX[29], innerY[29] - counter);

    line(outerX[0], outerY[0] - counter, innerX[69], innerY[69] - counter);
    line(outerX[0], outerY[0] - counter, innerX[11], innerY[11] - counter);

    line(innerX[51], innerY[51] - counter, innerMostX[15], innerMostY[15] - counter);
    line(innerX[29], innerY[29] - counter, innerMostX[5], innerMostY[5] - counter);

    line(innerX[69], innerY[69] - counter, innerMostX[15], innerMostY[15] - counter);
    line(innerX[11], innerY[11] - counter, innerMostX[5], innerMostY[5] - counter);

    //North
    line(outerX[5], outerY[5] + counter, innerX[51], innerY[51] + counter );
    line(outerX[5], outerY[5] + counter, innerX[29], innerY[29] + counter );

    line(outerX[0], outerY[0] + counter, innerX[69], innerY[69] + counter );
    line(outerX[0], outerY[0] + counter, innerX[11], innerY[11] + counter );

    line(innerX[51], innerY[51] + counter, innerMostX[15], innerMostY[15] + counter );
    line(innerX[29], innerY[29] + counter, innerMostX[5], innerMostY[5] + counter );

    line(innerX[69], innerY[69] + counter, innerMostX[15], innerMostY[15] + counter );
    line(innerX[11], innerY[11] + counter, innerMostX[5], innerMostY[5] + counter );
  }
}
