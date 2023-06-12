---



## Setup mkdocs (Local)

1. Install python and pip `sudo pacman -S python python-pip`
2. Install mkdocs (pip) `pip install mkdocs-material` + all plugins found in mkdocs.yml
3. Enable plugins in mkdocs.yml (all md plugins are build in)
4. Initialize project `mkdocs new .`
5. Edit mkdocs.yml (e.g add theme:)
6. mkdocs serve


## Setup github pages

1. Navigate to settings
2. Scroll down to github Pages
3. Change the branch to the docs folder:
   ![[docs/ressources/Pasted image 20230606182459.png]]
4. Setup Github actions (create .github/workflows/ci.yml)
5. See my ci.yml (github.com/phonkd/dockerd)
6. Install dependencies `- run: pip install mkdocs-material pillow cairosvg mkdocs-roamlinks-plugin
7. 


