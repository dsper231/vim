"--------------------------------------------------------------------------------
" David's .vimrc file
"--------------------------------------------------------------------------------

" Don't use vi-compatibility mode
set nocompatible

" Show line numbers
set nu

" Show matching brackets
set showmatch

" Show current mode in status line
set showmode

" Do not wrap lines
set nowrap

" Use the smart version of backspace
set backspace=2

" Enable highlighting of misspelled words
set spell

"Show line and column number in lower right corner
set ruler

" Show the command being typed
set showcmd

" Map "smash" of jk and kj to <escape> to make it easier to return to normal mode
:inoremap jk <esc> 
:inoremap kj <esc> 
:vnoremap jk <esc> 
:vnoremap kj <esc> 

"Set tab stops at 2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Specify vim behavior when running from within IRB
if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on
  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif
