# yt

yt is a POSIX shell script that allows you to search for YouTube videos using Invidious and plays them using MPV.

---------

### Dependencies
- POSIX complient shell
- [ytsearch](https://github.com/7Games/ytsearch) and all its dependencies
- mpv and all its dependencies

---------

### How to install

#### 1. Clone the repo
```
$ git clone https://github.com/7Games/ytsearch.git && cd ytsearch
```
#### 2. Run the install command
```
# make install
```
That command requires root access. If you don't have root access you can use this command.
```
$ make install_user
```
The man page is not installed if you use the user install.
#### 3. Run the program
```
$ yt -h
yt by 7Games (Benjamin)         
usage: yt [-h, -i, -s [search]]         

 -i, --id    gets the video by its video id         
 -s, --search    takes in string and uses it to search with ytsearch         
 -h, --help    displays this help and exit         

More info: man 1 yt
```

---------

### Usage
Simply run the ```yt``` command to run the program.
```
$ yt
```
This will either open fzf or dmenu depending on what you set it to.

Then select a video and it will play in MPV.

You can use the ```-s```/```--search``` argument to search for something, so the program won't ask when you run it.
```
$ yt --search installing gentoo linux
```

You can use the ```-i```/```--id``` argument to play a video by its ID.
```
$ yt --id dQw4w9WgXcQ
```

You can use Environment Variables to change certain things.
#### Change the Invidious instance
```
$ INVIDIOUS_INSTANCE="https://invidious.example.com" yt
```
#### Change MPV arguments
```
$ MPV_ARGUMENTS="--no-terminal --volume=50 --yt-format=best[height<=1080] yt --search Librebooted Thinkpad running OpenBSD        
```
#### Change finder
```
$ FINDER="fzf -i +m --cycle"
```
<br><br>
Made by [7Games](https://sevengames.xyz).<br>
[LICENSE](https://github.com/7Games/ytsearch/blob/main/LICENSE)


