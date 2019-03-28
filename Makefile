run::
	jekyll serve

deploy::
	jekyll build
	rm _site/Makefile
	cp htaccess _site/.htaccess
	rsync -r -a -v -e ssh --delete _site/ donblas@northaustinmusictherapy.com:/home/donblas/northaustinmusictherapy.com/
