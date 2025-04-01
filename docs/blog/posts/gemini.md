---
date:
  created: 2025-03-20
---
#MKDocs-Github Deployment on to Github Pages

GitHub repository `https://github.com/KarthikSubbarm/KasuWorks`. 

**I. Setting up the GitHub Repository (If Not Already Done):**

1.  **Create a New Repository (If You Don't Have One):**
    *   Go to [github.com](https://github.com/) and sign in.
    *   Click the "+" icon, then "New repository."
    *   Name it `KasuWorks`. (If you intend to deploy to `karthiksubbarm.github.io`, then the repo name MUST be that).
    *   Choose Public or Private (Public required for free GitHub Pages).
    *   **DO NOT** initialize with a README, license, or .gitignore. Click "Create repository."

2.  **Get the Repository URL:**

    *   Click "Code". Copy the HTTPS or SSH URL. (I'll assume HTTPS in this example, but SSH is recommended if you've set it up)

**II. Preparing Your Local MKDocs Project:**

1.  **Initialize Git:**
    *   In your MKDocs project directory, run: `git init`

2.  **Create `.gitignore`:**
    *   Create a file named `.gitignore` with this content:

        ```
        site/
        venv/
        .venv/
        __pycache__/
        *.pyc
        *.log
        ```

3.  **Stage, Commit, and Link:**

    ```batch
    git add .
    git commit -m "Initial commit"
    git remote add origin https://github.com/KarthikSubbarm/KasuWorks.git
    git branch -M main
    git push -u origin main
    ```

**III. Creating the Deployment Script (`deploy.bat`):**

Create a file named `deploy.bat` in the root of your MKDocs project with the following content. **IMPORTANT: Replace the `<YOUR_GITHUB_USERNAME>` placeholder**

```batch
@echo off
setlocal

echo Building MKDocs site...
mkdocs build

echo Deploying to gh-pages branch...
cd site

git init
git add .
git commit -m "Deploy to GitHub Pages"

git remote add origin https://github.com/KarthikSubbarm/KasuWorks.git
git branch -M gh-pages
git push -f origin gh-pages

cd ..
endlocal
```

**IV. Running the Deployment Script:**

1.  Open a Command Prompt or PowerShell window in your MKDocs project directory.
2.  Run: `deploy.bat`

**V. Configuring GitHub Pages (After Initial Push):**

1.  Go to your `KasuWorks` repository on GitHub.
2.  Navigate to Settings -> Pages.
3.  Under "Source," select "Deploy from a branch."
4.  Choose branch `gh-pages`.
5.  Set the root directory to `/`.
6.  Click "Save."

**VI. Accessing Your GitHub Pages Site:**

*   Wait a few minutes for GitHub Pages to process.
*   Your site will be available at: `https://karthiksubbarm.github.io/KasuWorks/`