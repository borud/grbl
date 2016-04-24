#!/bin/bash
#
# Convenience script for flashing firmware to Arduino Uno on given
# device.

avrdude -pm328p -carduino -P /dev/cu.usbmodemfd141 -D -Uflash:w:grbl.hex

