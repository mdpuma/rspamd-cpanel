#!/bin/bash

for i in `ls -1 $1`; do
        SCORE="`cat $i | rspamc | grep Score | cut -d ' ' -f2 | cut -d '.' -f1`"
        if [ $SCORE -gt 6 ]; then
                echo "SCORE is $SCORE"
                rm $i -v
        fi
done