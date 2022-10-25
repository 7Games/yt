install:
	chmod +x ./yt
	cp ./yt /usr/local/bin/
	cp ./yt.1 /usr/local/share/man/man1/
	mandb

install_user:
	chmod +x ./yt
	cp ./yt ~/.local/bin/
