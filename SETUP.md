# Quick Setup Instructions for AB.DESIGN

## Option 1: Using the Setup Script (Recommended)

1. Open Terminal
2. Navigate to the project:
   ```bash
   cd /Users/teem/Documents/Docker/AB.DESIGN
   ```

3. Make the script executable:
   ```bash
   chmod +x setup-git.sh
   ```

4. Run the setup script:
   ```bash
   ./setup-git.sh
   ```

5. Follow the prompts!

---

## Option 2: Manual Setup

### Step 1: Initialize Git Repository

```bash
cd /Users/teem/Documents/Docker/AB.DESIGN
git init
git add .
git commit -m "Initial commit: AB.DESIGN website v1.0"
```

### Step 2: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: **AB.DESIGN**
3. Description: "Creative advertising and content creation website"
4. Choose Public or Private
5. **DO NOT** check "Initialize this repository with a README"
6. Click "Create repository"

### Step 3: Push to GitHub

Replace `YOUR_USERNAME` with your GitHub username:

```bash
git remote add origin https://github.com/YOUR_USERNAME/AB.DESIGN.git
git branch -M main
git push -u origin main
```

### Step 4: Authenticate (if prompted)

- If using HTTPS, you'll need a Personal Access Token
- Generate one at: https://github.com/settings/tokens
- Use the token as your password when prompted

---

## Option 3: Enable GitHub Pages (Optional)

To host your website for free on GitHub Pages:

1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Under "Source", select **main** branch
4. Click **Save**
5. Your site will be live at: `https://YOUR_USERNAME.github.io/AB.DESIGN/`

---

## Future Updates

After making changes to your website:

```bash
git add .
git commit -m "Description of your changes"
git push
```

---

## Files in this Repository

- `index.html` - Main website file
- `README.md` - Project documentation
- `.gitignore` - Files to exclude from git
- `setup-git.sh` - Automated setup script
- `SETUP.md` - This file
