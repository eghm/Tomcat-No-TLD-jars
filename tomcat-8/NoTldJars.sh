#!/bin/bash

# one jar per/line
grep "No.TLD.files.were.found.in" $1 | grep "Consider.adding.the.JAR" | cut -d: -f 4 | cut -d] -f 1 | sed 's|/| |g' | awk '{print $NF}' | perl -e 'undef $/; print join( ",\\\n", split /\n/, <STDIN> ), "\n"'

# one line
#grep "No.TLD.files.were.found.in" $1 | grep "Consider.adding.the.JAR" | cut -d: -f 4 | cut -d] -f 1 | sed 's|/| |g' | awk '{print $NF}' | paste -s -d, - | sed 's|,\\||g'

