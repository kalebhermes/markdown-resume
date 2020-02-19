# Markdown Resume

[kalebhermes.com](https://www.kalebhermes.com) hosts my resume. Keeping a pdf copy of my resume and my website in sync and up-to-date was always a huge headache, so I decided to simply the problem. One Markdown file that contains my resume, and one command to generate a new version of my site and a new resume in PDF format. 

### Getting Started

To build the project, you simply need to clone this repo, install pip3, and run the make commands below.

```
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
make setup
make
```


### Issues
When installing md2pdf, I ran into the following issue. I solved the problem by installing the packages below with Brew. 

```OSError: dlopen() failed to load a library: cairo / cairo-2```

`brew install cairo pango gdk-pixbuf libxml2 libxslt libffi`