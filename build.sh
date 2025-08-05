#!/bin/bash

# Critjecture Website Build Script

echo "🚀 Building Critjecture Website..."

# Check if Quarto is installed
if ! command -v quarto &> /dev/null; then
    echo "❌ Quarto is not installed. Please install Quarto first:"
    echo "   https://quarto.org/docs/get-started/"
    exit 1
fi

# Clean previous build
echo "🧹 Cleaning previous build..."
rm -rf _site

# Build the website
echo "📦 Building website..."
quarto render

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Website built successfully!"
    echo "📁 Output directory: _site/"
    
    # Show build statistics
    echo "📊 Build Statistics:"
    echo "   - Pages: $(find _site -name "*.html" | wc -l)"
    echo "   - Blog posts: $(find _site/blog -name "*.html" | wc -l)"
    echo "   - Total size: $(du -sh _site | cut -f1)"
    
    # Ask if user wants to preview
    read -p "🌐 Would you like to start the preview server? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "🚀 Starting preview server..."
        quarto preview
    fi
else
    echo "❌ Build failed. Please check the error messages above."
    exit 1
fi 