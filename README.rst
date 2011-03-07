========
dotfiles
========

These are my dotfiles, feel free to steal from them. I'm using gnome on top of
archlinux if it is of any help.

.. image:: https://lh3.googleusercontent.com/_UTzJMpIw0Cs/TXPU3CLnvcI/AAAAAAAABE0/5kOOoxWE960/demula_theme.png

Don't forget to check the dependencies for the vim plugins.


Install
=======

git fork/clone i guess..


Features
========

I may forget about some but mostly:

- Bash development shell
- Configured vim with pathogen plugin organizer
- Monokai theme for bash and gvim and monaco font
- All these vim plugins submoduled with git (for updates):


    Syntax
    ------

    - `css3syntaxcolor
      <http://www.vim.org/scripts/script.php?script_id=3042>`_
    - `csscolor <http://www.vim.org/scripts/script.php?script_id=2150>`_
    - `djangosyntaxcolor 
      <http://www.vim.org/scripts/script.php?script_id=1487>`_
    - `docssyntaxcolor
      <http://www.vim.org/scripts/script.php?script_id=262>`_
    - `doctestsyntaxcolor <http://www.vim.org/scripts/script.php?script_id=1867>`_
    - gitsyntaxcolor - From Armin Ronacher `dotfiles
      <https://github.com/mitsuhiko/dotfiles>`_
    - `gnuplot <http://www.vim.org/scripts/script.php?script_id=1737>`_
    - `html5color <http://www.vim.org/scripts/script.php?script_id=3232>`_
    - `jinjasyntaxcolor
      <http://www.vim.org/scripts/script.php?script_id=1856>`_
    - `jquerycolor <http://www.vim.org/scripts/script.php?script_id=2416>`_
    - `jsoncolor <http://www.vim.org/scripts/script.php?script_id=1945>`_
    - `muttrc <http://www.vim.org/scripts/script.php?script_id=1479>`_
    - `pythoncoverage
      <http://www.vim.org/scripts/script.php?script_id=2643>`_
    - `pythonsyntaxcolor
      <http://www.vim.org/scripts/script.php?script_id=790>`_
    - `restsyntaxcolor
      <http://www.vim.org/scripts/script.php?script_id=973>`_
    - `tumblr <http://www.vim.org/scripts/script.php?script_id=3011>`_
    - `txtsyntaxcolor
      <http://www.vim.org/scripts/script.php?script_id=1532>`_
    - `wikipedia <http://www.vim.org/scripts/script.php?script_id=1787>`_


    Color themes
    ------------

    - `molokai <http://www.vim.org/scripts/script.php?script_id=2340>`_
    - `zenburn <http://www.vim.org/scripts/script.php?script_id=415>`_


    Utility
    -------

    - `ack <http://www.vim.org/scripts/script.php?script_id=2572>`_
    - `autocomplpop <http://www.vim.org/scripts/script.php?script_id=1879>`_
    - `bufexplorer <http://www.vim.org/scripts/script.php?script_id=42>`_
    - `closetag <http://www.vim.org/scripts/script.php?script_id=13>`_
    - `commandt <http://www.vim.org/scripts/script.php?script_id=3025>`_
    - `csapprox <http://www.vim.org/scripts/script.php?script_id=2390>`_
    - `fugitive <http://www.vim.org/scripts/script.php?script_id=2975>`_
    - `fuzzyfinder <http://www.vim.org/scripts/script.php?script_id=1984>`_
    - `gundo <http://www.vim.org/scripts/script.php?script_id=3304>`_
    - `L9 <http://www.vim.org/scripts/script.php?script_id=3252>`_
    - `largefile <http://www.vim.org/scripts/script.php?script_id=1506>`_
    - `nerdcommenter <http://www.vim.org/scripts/script.php?script_id=1218>`_
    - `nerdtree <http://www.vim.org/scripts/script.php?script_id=1658>`_
    - `nerdtreeack <http://www.vim.org/scripts/script.php?script_id=3357>`_
    - `pathogen <http://www.vim.org/scripts/script.php?script_id=2332>`_
    - `pydiction <http://www.vim.org/scripts/script.php?script_id=850>`_
    - `pydoc <http://www.vim.org/scripts/script.php?script_id=910>`_
    - `pythonmenus <http://www.vim.org/scripts/script.php?script_id=30>`_
    - `searchcomplete <http://www.vim.org/scripts/script.php?script_id=474>`_
    - `showmarks <http://www.vim.org/scripts/script.php?script_id=152>`_
    - `snipmate <http://www.vim.org/scripts/script.php?script_id=2540>`_
    - `sudo <http://www.vim.org/scripts/script.php?script_id=729>`_
    - `supertabcont <http://www.vim.org/scripts/script.php?script_id=1643>`_
    - `surround <http://www.vim.org/scripts/script.php?script_id=1697>`_
    - `syntastic <http://www.vim.org/scripts/script.php?script_id=2736>`_
    - `tabular <https://github.com/godlygeek/tabular>`_
    - `taglist <http://www.vim.org/scripts/script.php?script_id=273>`_
    - `tagmenu <http://www.vim.org/scripts/script.php?script_id=215>`_
    - `unimpaired <http://www.vim.org/scripts/script.php?script_id=1590>`_
    - `zencoding <http://www.vim.org/scripts/script.php?script_id=2981>`_


    Ftplugin
    --------

    - `gitcommit <http://www.vim.org/scripts/script.php?script_id=1934>`_
    - `pep8 <http://www.vim.org/scripts/script.php?script_id=3430>`_
    - `pythoncomplete <http://www.vim.org/scripts/script.php?script_id=1542>`_


Usage
=====


Development shell
-----------------

svc aware (git, hg ...) using vcprompt
some handy aliases and functions
battery life indicator
@TODO add virtualenv and background jobs


Gvim
----

Shortcuts added
    
Still a lot to write :)


Dependencies
============

pacman -S ack 

@TODO Fill dependencies ej: ctags
