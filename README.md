# dotfiles

Dotfiles used on Unix-like operating systems such as Debian and FreeBSD.



## Initialize


#### Git

Get onto master without checking anything out or overwriting any local files.

```
$ git init .
$ git remote add origin git@github.com:thnee/dotfiles.git
$ git fetch origin
$ git reset --mixed origin/master
```

#### Xrdb

```
$ xrdb -m .Xresources
```
