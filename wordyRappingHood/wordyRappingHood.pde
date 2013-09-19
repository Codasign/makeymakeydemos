/*
  wordyRappingHood
 written by Becky Stewart for Codasign
 September 2013
 
 These programs are free software: you can 
 redistribute them and/or modify them under 
 the terms of the GNU General Public License 
 as published by the Free Software Foundation, 
 either version 3 of the License, or (at your 
 option) any later version.
 
 These programs are distributed in the hope 
 that it will be useful, but WITHOUT ANY WARRANTY; 
 without even the implied warranty of 
 MERCHANTABILITY or FITNESS FOR A PARTICULAR 
 PURPOSE.  See the GNU General Public License 
 for more details.
 
 You should have received a copy of the GNU General 
 Public License along with this program.  If not, 
 see <http://www.gnu.org/licenses/>.
 */

PFont myFont;

void setup() {
  size( 1280, 740 );
  myFont = loadFont("TamilMN-60.vlw");
  textFont( myFont, 60 );
  noStroke();
}

void draw() {
  fill( 25, 58, 129, 5 );
  rect( 0, 0, width, height );
}

void keyPressed() {
  fill( 255 );
  // arrow or space keys
  if ( key == CODED ) {
    switch( keyCode ) {
    case UP:
      text( "Peter", random(0, width-20), random(0, height) );
      break;
    case DOWN:
      text( "Piper", random(0, width-20), random(0, height) );
      break;
    case RIGHT:
      text( "picked", random(0, width-20), random(0, height) );
      break;
    case LEFT:
      text( "a", random(0, width-20), random(0, height) );
      break;
    }
  } 
  else { // letters
    switch( key ) {
    case 'w':
      text( "peck", random(0, width-20), random(0, height) );
      break;
    case 'a':
      text( "of", random(0, width-20), random(0, height) );
      break;
    case 'd':
      text( "peppers", random(0, width-20), random(0, height) );
      break;
    case 's':
      text( "if", random(0, width-20), random(0, height) );
      break;
    case 'f':
      text( "where's", random(0, width-20), random(0, height) );
      break;
    case 'g':
      text( "the", random(0, width-20), random(0, height) );
      break;

      // re-programmed second MaKey MaKey
    case 'q':
      text( "she", random(0, width-20), random(0, height) );
      break;
    case 'e':
      text( "sells", random(0, width-20), random(0, height) );
      break;
    case 'r':
      text( "seashells", random(0, width-20), random(0, height) );
      break;
    case 't':
      text( "by", random(0, width-20), random(0, height) );
      break;
    case 'y':
      text( "seashore", random(0, width-20), random(0, height) );
      break;
    case 'u':
      text( "shells", random(0, width-20), random(0, height) );
      break;
    case 'i':
      text( "are", random(0, width-20), random(0, height) );
      break;
    case 'o':
      text( "surely", random(0, width-20), random(0, height) );
      break;
    case 'h':
      text( "how", random(0, width-20), random(0, height) );
      break;
    case 'j':
      text( "much", random(0, width-20), random(0, height) );
      break;
    case 'k':
      text( "wood", random(0, width-20), random(0, height) );
      break;
    case 'l':
      text( "would", random(0, width-20), random(0, height) );
      break;
    case 'z':
      text( "woodchuck", random(0, width-20), random(0, height) );
      break;
    case 'x':
      text( "chuck", random(0, width-20), random(0, height) );
      break;
    case 'c':
      text( "could", random(0, width-20), random(0, height) );
      break;
    }
  }
}

