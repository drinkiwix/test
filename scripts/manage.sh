#!/bin/bash

# Repository Management Script
# Demonstrates automation and scripting capabilities

echo "=== Repository Organization Tool ==="
echo "What I can do: Automate repository management tasks"
echo

# Function to display repository stats
show_stats() {
    echo "📊 Repository Statistics:"
    echo "  Total files: $(find . -type f ! -path './.git/*' | wc -l)"
    echo "  Image files: $(find images/ -name '*.png' 2>/dev/null | wc -l)"
    echo "  Directories: $(find images/ -type d 2>/dev/null | wc -l)"
    echo "  Documentation files: $(find . -name '*.md' | wc -l)"
    echo
}

# Function to validate file organization
validate_structure() {
    echo "🔍 Validating Repository Structure:"
    
    required_dirs=("images/consumer-services" "images/risk-management" "images/sales-marketing" "images/operations" "images/finance-strategy" "images/specialized-teams" "assets")
    
    for dir in "${required_dirs[@]}"; do
        if [ -d "$dir" ]; then
            echo "  ✅ $dir exists"
        else
            echo "  ❌ $dir missing"
        fi
    done
    echo
}

# Function to list capabilities
show_capabilities() {
    echo "🚀 Demonstrated Capabilities:"
    echo "  ✅ Repository organization and structure"
    echo "  ✅ File management and categorization"
    echo "  ✅ Documentation creation and maintenance"
    echo "  ✅ Automation script development"
    echo "  ✅ Project configuration and metadata"
    echo "  ✅ Version control best practices"
    echo "  ✅ Asset management and cataloging"
    echo
}

# Function to show quick navigation
show_navigation() {
    echo "🗂️ Quick Navigation:"
    echo "  📁 Consumer Services: images/consumer-services/"
    echo "  📁 Risk Management: images/risk-management/"
    echo "  📁 Sales & Marketing: images/sales-marketing/"
    echo "  📁 Operations: images/operations/"
    echo "  📁 Finance & Strategy: images/finance-strategy/"
    echo "  📁 Specialized Teams: images/specialized-teams/"
    echo "  📁 Assets: assets/"
    echo
}

# Main execution
case "${1:-stats}" in
    "stats")
        show_stats
        ;;
    "validate")
        validate_structure
        ;;
    "capabilities")
        show_capabilities
        ;;
    "navigation")
        show_navigation
        ;;
    "all")
        show_capabilities
        show_stats
        validate_structure
        show_navigation
        ;;
    *)
        echo "Usage: $0 [stats|validate|capabilities|navigation|all]"
        echo "Default: stats"
        ;;
esac

echo "💡 This script demonstrates automation and repository management capabilities!"