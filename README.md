# Mkdocs static website generator container.
[![Automated build](https://img.shields.io/docker/cloud/automated/bzhazreal/mkdocs)](https://hub.docker.com/repository/docker/bzhazreal/mkdocs)
[![docker build](https://img.shields.io/docker/cloud/build/bzhazreal/mkdocs)](https://hub.docker.com/repository/docker/bzhazreal/mkdocs)

## About Mkdocs :

> MkDocs is a fast, simple and downright gorgeous static site generator that's geared towards building project documentation. Documentation source files are written in Markdown, and configured with a single YAML configuration file. Start by reading the introduction below, then check the User Guide for more info.

- [Official website](https://www.mkdocs.org/)
- [Source code on github](https://github.com/mkdocs/mkdocs/)


## Requirements :

Docker :
  - [Install docker for Mac](https://docs.docker.com/docker-for-mac/install/)
  - [Install docker for Windows](https://docs.docker.com/docker-for-windows/install/)
  - [Install docker for Linux](https://docs.docker.com/engine/install/)
  - [Docker documentation](https://docs.docker.com/)

## This project usage :

This project is based on alpine and implements mkdocs.

Build the image :
```sh
git clone https://github.com/bzhazreal/docker-mkdocs.git
cd mkdocs
docker build -t <name>/mkdocs .
```

Create new project :
```sh
docker run -it -v $(pwd):/app <name>/mkdocs new .
```

Start server :
```sh
docker run -it -v $(pwd):/app -p 8000:8000 <name>/mkdocs serve -a 0.0.0.0:8000
```

Build the project :
```sh
docker run -it -v $(pwd):/app <name>/mkdocs build
```
## Use Production image :

```sh
docker pull bzhazreal/mkdocs
# Use previous command and replace <name> by bzhazreal for create server and build.
```
