int numCircles = 24;
boolean sensorArray[];

int circDiameter = 100;

void setup() {
  size( 800, 600 );

  sensorArray = new boolean[24];
  for ( int i=0; i<numCircles; i++ ) {
    sensorArray[i] = false;
  }
  sensorArray[1] = true;
}

void draw() {
  background( 255 );
  drawBoard();
}

void drawBoard() {
  int numRows = 4;
  for (int cols=0; cols<6; cols++ ) {
    for (int rows=0; rows<4; rows++) {
      println((numRows*cols)+rows);
      if ( sensorArray[(numRows*cols)+rows] ) {
        fill( 255, 0, 0 );
      } 
      else {
        fill( 0, 255, 0 );
      }
      ellipse( (cols*100)+50, (rows*100)+50, circDiameter, circDiameter);
    }
  }
}

