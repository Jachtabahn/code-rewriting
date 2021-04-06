#!/bin/env fish

find $argv -name "*.java" -exec java -jar ~/git/scripts/google-java-format-1.9-all-deps.jar --fix-imports-only --replace {} \;
echo "Import code has been equivalenty rewritten."
echo

echo -n "Number of Java files: "
find $argv -name "*.java" | wc --lines

echo -n "Number of non-empty lines of Java code: "
find $argv -name "*.java" -exec cat {} \; | sed '/^[[:space:]]*$/d' | wc --lines
