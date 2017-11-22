all: build

build:

	python -m markdown markdown_resume.md > ./html/markdown_resume.html
	python build_html.py ./html/pre_html.html ./html/markdown_resume.html ./html/post_html.html

clean:
	cp ./html/markdown_resume.html ./html/revisions/markdown_resume.backup.$$(date +%Y%m%d%H%M).html
	cp resume.html ./html/revisions/resume.backup.$$(date +%Y%m%d%H%M).html
	rm -rf resume.html
	rm -rf ./html/markdown_resume.html

lint:

