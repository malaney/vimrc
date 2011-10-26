Malaney's vimrc (Fork of vgod's vimrc https://github.com/vgod/vimrc)
============
Author: Malaney J. Hill <malaney@gmail.com>

This vimrc compiles some of the best ideas I've seen vimrc's across the internet including Tobias Schlitt's VIM 
integration for PHP and other's.  It relies heavily on Tim Pope's Pathogen plugin to facilitate inclusion of all 
plugins within their own sub-directories within the "~/.vim/bundle" sub-directory.

HOW TO INSTALL
--------------

0. Backup your original ~/.vim and ~/.vimrc
        $ mv ~/.vim ~/.vimbkup && mv ~/.vimrc ~/vimrc.bak && ~/.gvimrc ~/gvimrc.bak

1. Check out from github

        $ git clone git://github.com/malaney/vimrc.git ~/.vim
        $ cd ~/.vim
        $ sh install-vimrc.sh

3. (Optional, if you want Command-T) Compile the Command-T plugin

        $ cd .vim/bundle/command-t/ruby/command-t
        $ ruby extconf.rb
        $ make
  
WORKING WITH PLUGIN BUNDLES
---------------------------
To add a bundle 
    - git submodule add <git/repo/url> bundle/<bundlename>
    - git submodule update --init
    - git commit
To remove a bundle
    - Remove from .gitmodules
    - git rm --cached bundle/<bundlename>
    - git commit
To upgrade bundle
    - cd bundle/<bundlename>
    - git pull

UPGRADE PLUGIN BUNDLES
----------------------

All plugins (except vim-latex) were checked out as git submodules, 
which can be upgraded with `git pull`. For example, to upgrade Command-T 

     $ cd ~/.vim/bundle/command-t
     $ git pull

HOW TO USE
----------

see the "USEFUL SHORTCUTS" section in vimrc to learn my shortcuts.

PLUGINS
-------

* [Pathogen](http://www.vim.org/scripts/script.php?script_id=2332): Pathogen let us install a plugin as a bundle in ~/.vim/bundle seprately.

* [Nerd Tree](http://www.vim.org/scripts/script.php?script_id=1658): A tree explorer plugin for navigating the filesystem.

  Useful commands:
  * `:Bookmark [name]` - bookmark any directory as name
  * `:NERDTree [name]` - open the bookmark [name] in Nerd Tree

* [AutoClose](http://www.vim.org/scripts/script.php?script_id=1849):  Inserts matching bracket, paren, brace or quote.

* [vim-surround](https://github.com/tpope/vim-surround/blob/master/doc/surround.txt): deal with pairs of surroundings.

* [matchit](http://www.vim.org/scripts/script.php?script_id=39): extended % matching for HTML, LaTeX, and many other languages. 

* [xmledit](http://www.vim.org/scripts/script.php?script_id=301): XML/HTML tags will be completed automatically.

* [Command-T](https://github.com/wincent/Command-T): open and navigate between files with `cmd-t`.
  
* [SuperTab](http://www.vim.org/scripts/script.php?script_id=1643): Do all your insert-mode completion with Tab.

* [snipMate](http://www.vim.org/scripts/script.php?script_id=2540): TextMate-style snippets for Vim

  `:help snipMate` to see more info.

* [YankRing](http://www.vim.org/scripts/script.php?script_id=1234): Maintains a history of previous yanks, changes and deletes 
  
  `:help yankring` to see more info.

* [VisIncr](http://www.vim.org/scripts/script.php?script_id=670): Produce increasing/decreasing columns of numbers, dates, or daynames.
  
* [Cute Error Marker](http://www.vim.org/scripts/script.php?script_id=2653): showing error and warning icons on line.
  
   Note: MacVim users need to enable "Use experimental renderer" to see
   graphical icons.

* [vim-latex](http://vim-latex.sourceforge.net/): Latex support.

* [OmniCppComplete](http://www.vim.org/scripts/script.php?script_id=1520): C/C++ omni-completion with ctags database.

* [JavaComplete](http://www.vim.org/scripts/script.php?script_id=1785): Java Omni-completion.

* [VCSCommand](http://www.vim.org/scripts/script.php?script_id=90): Extremely useful vim front-end to git/svn/hg/bzr/cvs

* [PDV--phpDocumentor-for-Vim](http://www.vim.org/scripts/script.php?script_id=1355): Auto-generates doc blocks for PHP code

* [Vim-Fuguitive](ihttp://www.vim.org/scripts/script.php?script_id=2975):  A Git wrapper for vim


Language specific supports
--------------------------

* Latex: Read `:help latex-suite.txt`
* Restructured Text: `ctrl-u 1~5` inserts Part/Chapter/Section headers
* HTML, Javascript, Python, CSS, C, C++, Java: use `TAB` to do omni-completion.
* HTML/XML: End tags are automatically completed after typing a begin tag. (Typing > twice pushes the end tag to a new line.)

Other good references
---------------------

* http://amix.dk/vim/vimrc.html
* http://spf13.com/post/perfect-vimrc-vim-config-file
