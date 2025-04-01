---
date:
  created: 2025-04-01
---
#MKDocs on Docker

Docker Pull (Desktop): 
```
docker pull squidfunk/mkdocs-material
```

### Create a target/root folder and open terminal on that folder
Execute the following docker command: (This sets up the Docs and mkdocs.yml files to work with )
    ```
    docker run --rm -it -v "%cd%":/docs squidfunk/mkdocs-material new .
    ```

Execute the following docker command: ( Serves the website as Locahost at 8000)
```
docker run --rm -it -p 8000:8000 -v "%cd%":/docs squidfunk/mkdocs-material
```

Build and develop your site. Use the local host to validate the changes the Logos,Theme, Color, features, plugins, Navigation, Search, Social Media.    

!!! tip
        Make one change at a time so that you know which configuration is causing the error.


Execute the following Docker Command to build the website:
```
  docker run --rm -it -v "%cd%":/docs squidfunk/mkdocs-material build --verbose
```
initiate the Git , add and commit and push the code to main

Create deploy.bat (windows) and execute the bat file.

A new site will be generated and the html files will be pushed to gh-pages branch

Configure github repository especially Pages setup 

Latest pages will be deployed automatically and view the latest pages after successful deployment.
