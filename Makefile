NAME=apt-transport-s3
ARCHITECTURE=all

deb:
	fpm -s dir -t deb -v $(VERSION) -n $(NAME) -a $(ARCHITECTURE) -C ./src

prep:
	git pull origin
	git checkout master
	#git tag $(VERSION)
	github_changelog_generator -u JamieCressey -p apt-transport-s3
