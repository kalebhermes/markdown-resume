all: clean build

build:

	python -m markdown markdown_resume.md > ./html/markdown_resume.html
	python build_html.py ./html/pre_html.html ./html/markdown_resume.html ./html/post_html.html
	md2pdf markdown_resume.md --theme="./css/pdf.css" --output resume_kaleb_hermes.pdf
	# Copy the pervious version of index.html and resume.pdf to a previous folder, in case something goes wrong.
	# Upload newly built resume to webserver.
	ssh kaleb@kalebhermes.com "cp /var/www/html/index.html /var/www/html/previous/index.html"
	ssh kaleb@kalebhermes.com "cp /var/www/html/resume_kaleb_hermes.pdf /var/www/html/previous/resume_kaleb_hermes.pdf"
	scp resume.html kaleb@kalebhermes.com:/var/www/html/index.html
	scp resume_kaleb_hermes.pdf kaleb@kalebhermes.com:/var/www/html/resume_kaleb_hermes.pdf

clean:
	-cp resume.html ./html/revisions/resume.backup.html
	-cp resume_kaleb_hermes.pdf ./html/revisions/resume_kaleb_hermes.pdf
	-cp ./html/markdown_resume.html ./html/revisions/markdown_resume.backup.html
	-rm -rf resume.html
	-rm -rf resume_kaleb_hermes.pdf
	-rm -rf ./html/markdown_resume.html

buildLocal:

	python -m markdown markdown_resume.md > ./html/markdown_resume.html
	python build_html.py ./html/pre_html.html ./html/markdown_resume.html ./html/post_html.html
	md2pdf markdown_resume.md --theme="./css/pdf.css" --output resume_kaleb_hermes.pdf


resumePDF:

	md2pdf custom_resume/markdown_resume.md --theme="./css/pdf.css" --output custom_resume/resume_kaleb_hermes.pdf


setup:
	pip3 install -r requirements.txt --ignore-installed six

lint: