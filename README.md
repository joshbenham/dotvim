VIM
===

[Josh Benham](http://joshbenham.net)'s personal VIM setup

Overview
--------

Personal VIM setup that i use on an everyday basis.
Includes git submodules of plugins that i use. i.e. FZF, Fugitive and Airline.

Instructions
------------
```sh
# remember to backup your old vim directory/settings
$ mv ~/.vim ~/.vim-bak
$ mv ~/.vimrc ~/.vimrc-bak

# grab the repo
$ git clone https://github.com/joshbenham/dotvim.git ~/.vim

# symlink the rc file into your home directory
$ ln -s ~/.vim/vimrc ~/.vimrc
```

Remove (At your own risk!)
--------------------------

Make sure you have the `~/.vim-bak` folder and the `~/.vimrc-bak` file. If you do then you can continue.

```sh
# remove the ~/.vim folder
$ rm -rf ~/.vim

# remove the ~/.vimrc file
$ rm ~/.vimrc

# restore the old ~/.vim and ~/.vimrc
$ mv ~/.vim-bak ~/.vim
$ mv ~/.vimrc-bak ~/.vimrc
```
