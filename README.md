# Markdown Resume

kalebhermes.com](http://www.kalebhermes.com) hosts my resume. Keeping a pdf copy of my resume and the site in sync and up-to-date was always a huge headache, so I decided I'd simply the problem. One Markdown file that contains my resume's contents, and one command to generate a new version of my site and a new PDF with said contents. Feel free to fork and build your own. It's easy peasy. 

### Getting Started

If you'd like to build your own version, you simply need to clone this repo and run the following commands.

`make setup`

`make`


### Issues
When installing md2pdf, I ran into the following issue. I solved the problem by installing the packages below with Brew. 

```OSError: dlopen() failed to load a library: cairo / cairo-2```

`brew install cairo pango gdk-pixbuf libxml2 libxslt libffi`

Have you run into some issue that you've solved? Make a pull request with an update to thie README. 