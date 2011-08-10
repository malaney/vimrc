#!/bin/sh
cd ..
ln -s .vim/vimrc .vimrc
ln -s .vim/gvimrc .gvimrc

# Tell git not to verify SSL for submodules
export GIT_SSL_NO_VERIFY=true

# Install all submodules
git submodule update --init

# xmledit
# cd .vim/bundle/xmledit/ftplugin/
# ln -s xml.vim html.vim
# ln -s xml.vim xhtml.vim


