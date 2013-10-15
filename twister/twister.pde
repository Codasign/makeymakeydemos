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
          fill( 255, 0, 0 ); //red
          break;
        case 1:
          fill( 255, 255, 0 ); //blue 
          break;
        case 2:
          fill( 255, 255, 0 ); //yellow
          break;
        case 3:
          fill( 0, 255, 0 ); //green
          break;
        case 4:
          fill( 255, 0, 0 ); //red
          break;
        case 5:
          fill( 255, 255, 0 ); //blue 
          break;
        case 6:
          fill( 255, 255, 0 ); //yellow
          break;
        case 7:
          fill( 0, 255, 0 ); //green
          break;
        case 8:
          fill( 255, 0, 0 ); //red
          break;
        case 9:
          fill( 255, 255, 0 ); //blue 
          break;
        case 10:
          fill( 255, 255, 0 ); //yellow
          break;
        case 11:
          fill( 0, 255, 0 ); //green
          break;
        case 12:
          fill( 255, 0, 0 ); //red
          break;
        case 13:
          fill( 255, 255, 0 ); //blue 
          break;
        case 14:
          fill( 255, 255, 0 ); //yellow
          break;
        case 15:
          fill( 0, 255, 0 ); //green
          break;
        case 16:
          fill( 255, 0, 0 ); //red
          break;
        case 17:
          fill( 255, 255, 0 ); //blue 
          break;
        case 18:
          fill( 255, 255, 0 ); //yellow
          break;
        case 19:
          fill( 0, 255, 0 ); //green
          break;
        case 20:
          fill( 255, 0, 0 ); //red
          break;
        case 21:
          fill( 255, 255, 0 ); //blue 
          break;
        case 22:
          fill( 255, 255, 0 ); //yellow
          break;
        case 23:
          fill( 0, 255, 0 ); //green
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

