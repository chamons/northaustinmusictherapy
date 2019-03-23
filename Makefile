run::
	jekyll serve

deploy::
	jekyll build
	rm _site/Makefile
	rsync -r -a -v -e ssh --delete _site/ donblas@northaustinmusictherapy.com:/home/donblas/northaustinmusictherapy.com/new
