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