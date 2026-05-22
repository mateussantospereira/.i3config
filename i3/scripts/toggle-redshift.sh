#!/bin/bash
if [ -f /tmp/redshift_on ]; then
    redshift -x
    rm /tmp/redshift_on
else
    redshift -O 4100
    touch /tmp/redshift_on
fi
