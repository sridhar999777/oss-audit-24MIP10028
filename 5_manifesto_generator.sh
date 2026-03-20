#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sridhar Krishnan

# Alias concept demonstrated via comment:
# If we used 'alias txtread="cat"', we could view files with 'txtread file.txt'

echo "=================================================="
echo "Answer three questions to generate your manifesto."
echo "=================================================="
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph and write it to the file
echo "--- My Open Source Manifesto ---" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe in the power of shared knowledge. Every day, I rely on tools like $TOOL to learn, create, and explore. To me, open source is the embodiment of $FREEDOM. It represents a world where we build on the shoulders of giants rather than starting from scratch behind locked doors. If I had the time and resources, I would love to build $BUILD and give it back to the community, ensuring that the next generation has the same opportunities to innovate that I have today." >> "$OUTPUT"

echo ""
echo "Manifesto successfully saved to $OUTPUT"
echo "Here is what it looks like:"
echo "--------------------------------------------------"
cat "$OUTPUT"
echo "--------------------------------------------------"
