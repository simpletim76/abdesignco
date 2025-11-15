#!/bin/bash

# AB.DESIGN Git Setup Script
# This script initializes the git repository and helps push to GitHub

echo "========================================="
echo "  AB.DESIGN - Git Repository Setup"
echo "========================================="
echo ""

# Change to the project directory
cd "$(dirname "$0")" || exit 1

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Error: Git is not installed."
    echo "Please install git first: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Initialize git repository if not already initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already initialized"
fi

echo ""

# Configure git user if not set (optional)
if [ -z "$(git config user.name)" ]; then
    echo "⚙️  Git user not configured globally."
    read -p "Enter your name for git commits: " git_name
    read -p "Enter your email for git commits: " git_email
    git config user.name "$git_name"
    git config user.email "$git_email"
    echo "✅ Git user configured for this repository"
    echo ""
fi

# Stage all files
echo "📝 Staging files..."
git add .
echo "✅ Files staged"
echo ""

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: AB.DESIGN website v1.0

- Modern, responsive website design
- Hero section with creative advertising theme
- Services showcase section
- Navy blue and golden yellow color scheme
- Mobile-friendly responsive layout"

if [ $? -eq 0 ]; then
    echo "✅ Initial commit created"
else
    echo "⚠️  Commit failed or no changes to commit"
fi

echo ""
echo "========================================="
echo "  Next Steps: Push to GitHub"
echo "========================================="
echo ""
echo "1. Create a new repository on GitHub:"
echo "   → Go to: https://github.com/new"
echo "   → Repository name: AB.DESIGN"
echo "   → Make it public or private (your choice)"
echo "   → DO NOT initialize with README, .gitignore, or license"
echo "   → Click 'Create repository'"
echo ""
echo "2. Copy your GitHub repository URL"
echo "   Example: https://github.com/yourusername/AB.DESIGN.git"
echo ""

read -p "Enter your GitHub repository URL (or press Enter to skip): " github_url

if [ -n "$github_url" ]; then
    echo ""
    echo "🔗 Adding remote origin..."
    git remote add origin "$github_url"
    
    if [ $? -eq 0 ]; then
        echo "✅ Remote origin added"
        echo ""
        echo "🚀 Pushing to GitHub..."
        
        # Rename branch to main if needed
        git branch -M main
        
        # Push to GitHub
        git push -u origin main
        
        if [ $? -eq 0 ]; then
            echo ""
            echo "========================================="
            echo "  🎉 Success!"
            echo "========================================="
            echo ""
            echo "✅ Your AB.DESIGN website is now on GitHub!"
            echo "📍 Repository: $github_url"
            echo ""
            echo "Next steps:"
            echo "  • View your repo on GitHub"
            echo "  • Enable GitHub Pages to host your site"
            echo "  • Share your repository with collaborators"
            echo ""
        else
            echo ""
            echo "⚠️  Push failed. You may need to authenticate."
            echo ""
            echo "Try manually:"
            echo "  git push -u origin main"
            echo ""
            echo "If you need to authenticate, GitHub may prompt you."
            echo "For HTTPS, you'll need a Personal Access Token."
            echo "See: https://docs.github.com/en/authentication"
        fi
    else
        echo "⚠️  Failed to add remote. It may already exist."
        echo "To update the remote URL, use:"
        echo "  git remote set-url origin $github_url"
    fi
else
    echo ""
    echo "========================================="
    echo "  Manual Push Instructions"
    echo "========================================="
    echo ""
    echo "After creating your GitHub repository, run:"
    echo ""
    echo "  git remote add origin https://github.com/YOUR_USERNAME/AB.DESIGN.git"
    echo "  git branch -M main"
    echo "  git push -u origin main"
    echo ""
fi

echo ""
echo "========================================="
echo "  Local Repository Status"
echo "========================================="
echo ""
git status
echo ""
echo "✅ Setup complete!"
