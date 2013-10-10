# Installation
1. Clone the repo.
2. Edit .vimrc (optional) and link it to $HOME/.vimrc. Link .vim to $HOME.
    $ ln -s path/to/repo/.vimrc ~/.vimrc
    $ ln -s path/to/repo/.vim ~/.vim
3. Install vundle
    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
4. Run `$ vim +BundleInstall +qall`.

For more information check .vimrc.

## Additionally
To prevent crash between default snippets in Snipmate and others

    rm -rf ~/.vim/bundle/snipmate.vim/snippets

Change your TAB behaviour between PyDiction and Snipmate by follow this link :

http://stackoverflow.com/questions/1687252/with-vim-use-both-snipmate-and-pydiction-together-share-the-tab-key


## A. Python Debugger like pyflakes, pylint and pep8

For installing Python debugger using PIP :

    sudo apt-get install python-pip
    sudo pip install git+git://github.com/kevinw/pyflakes.git
    sudo pip install pylint
    sudo pip install pep8

Read .vimrc for magic keys and guide.


## B. Ctags

If you are using Ubuntu, then can do this command :

`sudo apt-get install exuberant-ctags`


## C. JavascriptLint

Configuration for jsl.conf located in ~/.vim/jsl.conf. 

Tips: You can change warning into '-ambiguous_newline' for disable newline checking (Jquery).

Follow this link for installation guide : http://cisight.com/auto-checking-errors-for-javascript-in-vim/

For *.js file, auto-checker work automatically after saving file. 

For another filetype ( .php, .py, .rb, etc), you can press SHIFT+j for Javascript checker.


## C. JSLint, Gjslint, JSHint 

[Jshint, Gjslint, Cssbeauty](http://www.yodi.me/2011/09/20/top-javascript-checker-tools-that-must-used-by-front-end-developer/)

## E. Colorscheme

Mustang as Colorscheme.
