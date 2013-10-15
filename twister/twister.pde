int numCircles = 24;
boolean sensorArray[];

int circDiameter = 100;

void setup() {
  size( 800, 600 );

  sensorArray = new boolean[24];
  resetBoard();
}

void draw() {
  background( 255 );

  drawBoard();
}

void resetBoard() {
  for ( int i=0; i<numCircles; i++ ) {
    sensorArray[i] = false;
  }
}

void drawBoard() {
  int numRows = 4;
  for (int cols=0; cols<6; cols++ ) {
    for (int rows=0; rows<4; rows++) {
      // top row
      if ( sensorArray[(numRows*cols)+rows]) {
        switch (rows) { 
        case 0:
          fill( 255, 0, 0 );
          break;
        case 1:
          //add fill
          break;
        case 2:
          //add fill
          break;
        case 3:
          fill( 0, 0, 255 );
          break;
        }
      }
      else {
        fill( 255, 255, 255 );
      }


      ellipse( (cols*100)+50, (rows*100)+50, circDiameter, circDiameter);
    }
  }
}

void keyPressed() {
  // check if coded
  if ( key==CODED ) {
  }
  // not coded, so regular letter
  else {
    switch (key) {
    case 'a':
      sensorArray[4] = true;
      break;
    case 's':
      sensorArray[23] = true;
      break;
    }
  }
}

void keyReleased() {
  // check if coded
  if ( key==CODED ) {
  }
  // not coded, so regular letter
  else {
    switch (key) {
    case 'a':
      sensorArray[4] = false;
      break;
    case 's':
      sensorArray[23] = false;
      break;
    }
  }
}

