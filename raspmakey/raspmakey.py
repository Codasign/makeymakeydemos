#!/usr/bin/env python
#! encoding: utf-8
import RPi.GPIO as GPIO
import sys
import select
import tty
import termios

from curses import ascii

def isData():
    return select.select([sys.stdin], [], [], 0) == ([sys.stdin], [], [])


GPIO.setmode(GPIO.BCM)
RED_LEDS = 15
GREEN_LEDS = 18
BLUE_LEDS = 14

red_state = False
green_state = False
blue_state = False

GPIO.setup(RED_LEDS, GPIO.OUT)
GPIO.setup(GREEN_LEDS, GPIO.OUT)
GPIO.setup(BLUE_LEDS, GPIO.OUT)

GPIO.output(RED_LEDS, red_state)
GPIO.output(GREEN_LEDS, green_state)
GPIO.output(BLUE_LEDS, blue_state)

old_settings = termios.tcgetattr(sys.stdin)
try:
    tty.setcbreak(sys.stdin.fileno())

    while True:

        if isData():
            c = sys.stdin.read(1)
	    if c == chr(32):
		blue_state = not  blue_state
		GPIO.output(BLUE_LEDS, blue_state)
		print "blue"
	    if c == 's':
		green_state = not green_state
 		GPIO.output(GREEN_LEDS, green_state);
		print "green"

            if c == 'w':
                print "red"
		red_state = not red_state
		GPIO.output(RED_LEDS, red_state)
            if c == chr(ascii.ESC):
                break

finally:
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, old_settings)

    GPIO.output(RED_LEDS, False)
    GPIO.output(GREEN_LEDS, False)
    GPIO.output(BLUE_LEDS, False)
    GPIO.setup(RED_LEDS, GPIO.IN)
    GPIO.setup(GREEN_LEDS, GPIO.IN)
    GPIO.setup(BLUE_LEDS, GPIO.IN)
