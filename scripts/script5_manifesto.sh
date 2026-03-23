#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto." [cite: 192]
read -p "1. Name one open-source tool you use every day: " TOOL [cite: 193]
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM [cite: 194]
read -p "3. Name one thing you would build and share freely: " BUILD [cite: 195]

DATE=$(date +'%d %B %Y') [cite: 197]
OUTPUT="manifesto_$(whoami).txt" [cite: 198]

# Composing the paragraph [cite: 199]
{
    echo "Open Source Manifesto - Generated on $DATE"
    echo "------------------------------------------"
    echo "In a world of closed systems, I choose $TOOL because it represents $FREEDOM."
    echo "I believe in the power of shared knowledge, which is why I aim to build $BUILD"
    echo "and release it for the benefit of all, standing on the shoulders of giants."
} > "$OUTPUT" [cite: 200]

echo "Manifesto saved to $OUTPUT" [cite: 201]
cat "$OUTPUT" [cite: 202]