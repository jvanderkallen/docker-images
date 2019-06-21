# Nmap

Usage:

``` sh
$ ./build.sh
$ ./nmap.sh -sS google.com
```

If you copy nmap.sh to /usr/local/bin and name it nmap then you can access it from any directory. As if nmap was installed locally.

``` sh
$ mv nmap.sh /usr/local/bin/nmap
$ chmod +x /usr/local/bin/nmap
$ cd /
$ nmap -sS google.com
```