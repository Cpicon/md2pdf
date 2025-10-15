#!/bin/bash

# Installation script for md2pdf
# Run with: ./install.sh

set -e

echo "Installing md2pdf..."
echo ""

# Check dependencies
echo "Checking dependencies..."

if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    exit 1
fi

if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3 first."
    exit 1
fi

echo "✅ Node.js found: $(node --version)"
echo "✅ Python 3 found: $(python3 --version)"
echo ""

# Check and install npm dependencies
echo "Checking npm dependencies..."

if ! command -v md-to-pdf &> /dev/null; then
    echo "Installing md-to-pdf..."
    npm install -g md-to-pdf
else
    echo "✅ md-to-pdf is already installed"
fi

if ! command -v mmdc &> /dev/null; then
    echo "Installing mermaid-cli..."
    npm install -g @mermaid-js/mermaid-cli
else
    echo "✅ mermaid-cli is already installed"
fi

echo ""
echo "Creating symlink in /usr/local/bin..."
sudo ln -sf ~/PycharmProjects/md2pdf/bin/md2pdf /usr/local/bin/md2pdf

echo ""
echo "✅ Installation complete!"
echo ""
echo "You can now use md2pdf from anywhere:"
echo "  md2pdf document.md"
echo ""
echo "Run 'md2pdf' with no arguments to see usage information."
