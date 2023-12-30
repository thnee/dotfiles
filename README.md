# dotfiles

Dotfiles used on Unix-like operating systems such as Debian and FreeBSD.



## Initialize

#### Git

Get onto main without checking anything out or overwriting any local files.

```shell
git init -b main
git remote add origin git@github.com:thnee/dotfiles.git
git fetch
git reset origin/main
git branch -u origin/main main
```

#### Xrdb

```
$ xrdb -m .Xresources
```
