#!/bin/sh

# Debug: Show current directory and files
echo "Current directory: $(pwd)"
echo "Files in current directory:"
ls -la

# Check if glance.yml exists
if [ -f "glance.yml" ]; then
    echo "✅ glance.yml found"
    echo "Content of glance.yml (first few lines):"
    head -5 glance.yml
else
    echo "❌ glance.yml not found"
    echo "Looking for config files:"
    find . -name "*.yml" -o -name "*.yaml" 2>/dev/null
fi

# Start the application
echo "Starting Glance..."
exec ./glance 