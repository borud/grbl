#!/bin/bash
#
# Convenience script for flashing firmware to Arduino Uno on given
# device.

if [ -z $1 ]; then
    echo ""
    echo "Usage: "
    echo "  $0 <serial device>"
    echo ""
    echo "  Available serial devices:"
    for a in `ls /dev/cu.*`; do
	echo "    - $a";
    done
    echo ""
    exit 1
fi

avrdude -pm328p -carduino -P $1 -D -Uflash:w:grbl.hex

