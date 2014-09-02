M= "comment"

all: tvapi
clean:
	rm -rf ./spec/index.html

tvapi: spec/index.src.html
	bikeshed -q spec ./spec/index.src.html ./spec/index.html

publish: all
	git add *;\
	git commit -m "$(M)";\
	git status;\
	git push origin master +master:gh-pages

