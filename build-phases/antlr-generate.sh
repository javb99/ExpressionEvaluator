#!/bin/bash

#  genParser.sh
#  TestSwiftParser
#
#  Usage: antlr-generate.sh <input grammar file> <output dir>
#
#  This is run automatically as part of the build process.
#
#  Created by Joseph Van Boxtel on 4/14/20.
#  Copyright © 2020 Joseph Van Boxtel. All rights reserved.

ANTLER_VERSION=4.8
ANTLER_LOCATION="/usr/local/lib/antlr-$ANTLER_VERSION-complete.jar"

if [ "$#" -lt 2 ]
then
    echo "error: Insufficient arguments specified. Expected <input grammar file> <output dir>"
    exit 1
fi
GRAMMAR="$1"
OUTPUT_DIR="$2"

if [ ! -f "$ANTLER_LOCATION" ]
then
    echo "error: ANTLR4 dependency at '$ANTLER_LOCATION' do you have a version mismatch? Expecting $ANTLER_VERSION"
    exit 2
fi

if [ ! -f "$GRAMMAR" ]
then
    echo "error: Missing grammar file at $GRAMMAR"
    exit 3
fi

echo "Generating ANLTR Parser using $GRAMMAR"
java -Xmx500M -cp "$ANTLER_LOCATION:$CLASSPATH" org.antlr.v4.Tool -visitor -Dlanguage=Swift -message-format gnu -o $OUTPUT_DIR $GRAMMAR
echo "Finished Generating ANLTR Parser at $OUTPUT_DIR"
