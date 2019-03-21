run::
	jekyll serve

deploy::
	jekyll build
	rm _site/Makefile
	rm -r _site/design/
	rsync -r -a -v -e ssh --delete _site/ donblas@northaustinmusictherapy.com:/home/donblas/northaustinmusictherapy.com/new
