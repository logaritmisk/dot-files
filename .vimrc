color jellybeans
syntax on

set showmode " always show what mode we're currently editing in
set tabstop=2 " a tab is two spaces
set softtabstop=4 " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab " expand tabs by default (overloadable per file type later)
set shiftwidth=2 " number of spaces to use for autoindenting
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set number " always show line numbers
set ruler " always display the current cursor position in the lower right
          " corner of the Vim window
set showmatch " set show matching parenthesis
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase,
              " case-sensitive otherwise
set smarttab " insert tabs on the start of a line according to
             " shiftwidth, not tabstop
set hlsearch " highlight search terms
set incsearch " show search matches as you type
set gdefault " search/replace "globally" (on a line) by default
set list " show the following invisible characters
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:
