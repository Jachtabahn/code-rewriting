#!/bin/env fish

# ln -s ~/git/scripts/cleancode.fish ~/.local/bin/cleancode

java -jar ~/git/scripts/google-java-format-1.9-all-deps.jar --fix-imports-only --replace (find $argv -name "*.java")
echo "Import statements might have been removed from the following files:"
java -jar ~/git/scripts/google-java-format-1.9-all-deps.jar -n (find $argv -name "*.java")
echo

echo -n "Number of Java files: "
find $argv -name "*.java" | wc --lines

echo -n "Number of non-empty lines of Java code: "
find $argv -name "*.java" -exec cat {} \; | sed '/^[[:space:]]*$/d' | wc --lines
