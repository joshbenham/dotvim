VIM
===

[Josh Benham](http://joshbenham.net)'s personal VIM setup

Overview
--------

Personal VIM setup that i use on an everyday basis.
Includes git submodules of plugins that i use. i.e. CtrlP, Fugitive and Powerline.

Instructions
------------
```sh
# remember to backup your old vim directory/settings
mv ~/.vim ~/.vim-bak
mv ~/.vimrc ~/.vimrc-bak

# grab the repo
git clone git://github.com/joshbenham/dotvim ~/.vim

# pull down the submodule files
cd ~/.vim
git submodule init
git submodule update

# symlink the pathogen vim file from the submodule to a level lower
ln -s ~/.vim/autoload/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

# symlink the rc file into your home directory
ln -s ~/.vim/vimrc ~/.vimrc
```

Remove (At your own risk!)
--------------------------

Make sure you have the `~/.vim-bak` folder and the `~/.vimrc-bak` file. If you do then you can continue.

```sh
# remove the ~/.vim folder
rm -rf ~/.vim

# remove the ~/.vimrc file
rm ~/.vimrc

# restore the old ~/.vim and ~/.vimrc
mv ~/.vim-bak ~/.vim
mv ~/.vimrc-bak ~/.vimrc
```
