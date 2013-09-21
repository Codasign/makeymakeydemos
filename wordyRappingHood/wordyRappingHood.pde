/*
  wordyRappingHood
 written by Becky Stewart for Codasign
 September 2013
 
 see http://www.youtube.com/watch?v=g_1kziD6Lec
 
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

import ddf.minim.*;

Minim minim;
AudioPlayer peter, piper, picked, a, of, peck, peppers, ifwav;
AudioPlayer wheres, the, she, sells, seashells, by, seashore, shells;
AudioPlayer are, surely, how, much, wood, would, woodchuck, chuck, could;

PFont myFont;

void setup() {
  size( 1280, 740 );

  // set audio player
  minim = new Minim(this);

  peter = minim.loadFile("Peter.wav");
  piper = minim.loadFile("Piper.wav");
  picked = minim.loadFile("Picked-1.wav");
  a = minim.loadFile("A.wav");
  peck = minim.loadFile("A Peck.wav");
  of = minim.loadFile("Of_long.wav");
  peppers = minim.loadFile("Peppers.wav");
  ifwav = minim.loadFile("If.wav");
  wheres = minim.loadFile("Wheres.wav");
  the = minim.loadFile("The.wav");
  she = minim.loadFile("She.wav");
  sells = minim.loadFile("Sells.wav");
  seashells = minim.loadFile("Seashells.wav");
  by = minim.loadFile("By.wav");
  seashore = minim.loadFile("Seashore.wav");
  shells = minim.loadFile("Shells.wav");
  are = minim.loadFile("Are.wav");
  surely = minim.loadFile("Surely.wav");
  how = minim.loadFile("How.wav");
  much = minim.loadFile("Much.wav");
  wood = minim.loadFile("Wood.wav");
  would = minim.loadFile("Would.wav");
  woodchuck = minim.loadFile("Woodchuck.wav");
  chuck = minim.loadFile("Chuck.wav");




  myFont = loadFont("TamilMN-60.vlw");
  textFont( myFont, 60 );
  noStroke();
}

void draw() {
  fill(162, 20, 30, 5 );
  rect( 0, 0, width, height );
}

void keyPressed() {
  fill( 255 );
  // arrow or space keys
  if ( key == CODED ) {
    switch( keyCode ) {
    case UP:
      text( "Peter", random(0, width-20), random(0, height) );
      peter.play();
      peter.rewind();
      break;
    case DOWN:
      text( "Piper", random(0, width-20), random(0, height) );
      piper.play();
      piper.rewind();
      break;
    case RIGHT:
      text( "picked", random(0, width-20), random(0, height) );
      picked.play();
      picked.rewind();
      break;
    case LEFT:
      text( "a", random(0, width-20), random(0, height) );
      a.play();
      a.rewind();
      break;
    }
  } 
  else { // letters
    switch( key ) {
    case 'w':
      text( "a peck", random(0, width-20), random(0, height) );
      peck.play();
      peck.rewind();
      break;
    case 'a':
      text( "of", random(0, width-20), random(0, height) );
      of.play();
      of.rewind();
      break;
    case 'd':
      text( "peppers", random(0, width-20), random(0, height) );
      peppers.play();
      peppers.rewind();
      break;
    case 's':
      text( "if", random(0, width-20), random(0, height) );
      ifwav.play();
      ifwav.rewind();
      break;
    case 'f':
      text( "where's", random(0, width-20), random(0, height) );
      wheres.play();
      wheres.rewind();
      break;
    case 'g':
      text( "the", random(0, width-20), random(0, height) );
      the.play();
      the.rewind();
      break;

      // re-programmed second MaKey MaKey
    case 'q':
      text( "she", random(0, width-20), random(0, height) );
      she.play();
      she.rewind();
      break;
    case 'e':
      text( "sells", random(0, width-20), random(0, height) );
      sells.play();
      sells.rewind();
      break;
    case 'r':
      text( "seashells", random(0, width-20), random(0, height) );
      seashells.play();
      seashells.rewind();
      break;
    case 't':
      text( "by", random(0, width-20), random(0, height) );
      by.play();
      by.rewind();
      break;
    case 'y':
      text( "seashore", random(0, width-20), random(0, height) );
      seashore.play();
      seashore.rewind();
      break;
    case 'u':
      text( "shells", random(0, width-20), random(0, height) );
      shells.play();
      shells.rewind();
      break;
    case 'i':
      text( "are", random(0, width-20), random(0, height) );
      are.play();
      are.rewind();
      break;
    case 'o':
      text( "surely", random(0, width-20), random(0, height) );
      surely.play();
      surely.rewind();
      break;
    case 'h':
      text( "how", random(0, width-20), random(0, height) );
      how.play();
      how.rewind();
      break;
    case 'j':
      text( "much", random(0, width-20), random(0, height) );
      much.play();
      much.rewind();
      break;
    case 'k':
      text( "wood", random(0, width-20), random(0, height) );
      wood.play();
      wood.rewind();
      break;
    case 'l':
      text( "would", random(0, width-20), random(0, height) );
      would.play();
      would.rewind();
      break;
    case 'z':
      text( "woodchuck", random(0, width-20), random(0, height) );
      woodchuck.play();
      woodchuck.rewind();
      break;
    case 'x':
      text( "chuck", random(0, width-20), random(0, height) );
      chuck.play();
      chuck.rewind();
      break;
    case 'c':
      text( "could", random(0, width-20), random(0, height) );
      could = minim.loadFile("Could.wav");
      could.play();
      could.rewind();
      break;
    }
  }
}

