"""
 " .vimrc
 " Personal vim configuration.
 ""

" Reset options when resourcing this file.
set nocompatible

" Turn on auto-indenting based on file type.
filetype indent plugin on

" Always display the status line.
set laststatus=2

" Set the status line to show the current column.
set statusline+=col:\ %c

" General Preferences.
set autoindent
set background=dark
set cmdheight=2
set pastetoggle=<F2>
syntax on

" Better commandline completion.
set wildmenu

" Show partial commands.
set showcmd

" Highlight during searches.
set hlsearch

" Allow backspacing over hidden characters.
set backspace=indent,eol,start

" Display the cursor position.
set ruler

" Ask about saving changes.
set confirm

" Use a visual bell instead of a sound.
set visualbell
set t_vb=

" Add mouse support for all modes.
set mouse=a

" Show line numbers.
set number

" Indent at 2 spaces.
set shiftwidth=2
set softtabstop=2
set expandtab

