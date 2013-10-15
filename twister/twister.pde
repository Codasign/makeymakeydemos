int numCircles = 24;
boolean sensorArray[];

int circDiameter = 100;

void setup() {
  size( 800, 600 );

  sensorArray = new boolean[24];
  for ( int i=0; i<numCircles; i++ ) {
    sensorArray[i] = false;
  }
  sensorArray[4]=true;
  sensorArray[23] = true;
}

void draw() {
  background( 255 );
  drawBoard();
}

void drawBoard() {
  int numRows = 4;
  for (int cols=0; cols<6; cols++ ) {
    for (int rows=0; rows<4; rows++) {
      // top row
      if ( sensorArray[(numRows*cols)+rows]) {
        if (rows==0)
          fill( 255, 0, 0 );
        if ( rows==3)
          fill( 0, 0, 255 );
      } 
      else {
        fill( 255, 255, 255 );
      }

      ellipse( (cols*100)+50, (rows*100)+50, circDiameter, circDiameter);
    }
  }
}

