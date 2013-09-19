import RPi.GPIO as GPIO
import sys
import select
import tty
import termios

from curses import ascii

def isData():
    return select.select([sys.stdin], [], [], 0) == ([sys.stdin], [], [])


GPIO.setmode(GPIO.BCM)
GREEN_LED = 18
RED_LED = 23
GPIO.setup(GREEN_LED, GPIO.OUT)
GPIO.setup(RED_LED, GPIO.OUT)

old_settings = termios.tcgetattr(sys.stdin)
try:
    tty.setcbreak(sys.stdin.fileno())

    i = 0
    while 1:
        # print i
        # i += 1

        if isData():
            c = sys.stdin.read(1)
            if c == 'a':
                print "on"
		GPIO.output(GREEN_LED, True)
	    if c == 's':
		print "off"
		GPIO.output(GREEN_LED, False)
            if c == chr(ascii.ESC):
                break

finally:
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, old_settings)
