NAME=apt-transport-s3
VERSION=2.0.0
ARCHITECTURE=all

deb:
	fpm -s dir -t deb -v $(VERSION) -n $(NAME) -a $(ARCHITECTURE) -C ./src
