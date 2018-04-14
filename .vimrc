"Checking if the plugin manager vim-plug is installed.
"If not, it curls it.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

:set number
:set relativenumber
:set colorcolumn=81
:set nocompatible
:set updatetime=100
:syntax on

"Plugins
call plug#begin('~/.vim/plugged')

"Colors
Plug 'junegunn/seoul256.vim'

Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'

"Initialize plugin system
call plug#end()

"lightline.vim settings
:set laststatus=2 "Required for lightline to show
:set noshowmode "Hides the original INSERT/VISUAL indicator
"Setting lightline.vim's colorscheme
let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\ }

"Setting vim's colorscheme
:colo seoul256

"Set the colorcolumn's color to light-grey (mmv).
:highlight colorcolumn ctermbg=7

"Set the combination `jj` to escape INSERT mode. 
:inoremap jj <ESC>

"Set the combination 'jj' to escape VISUAL mode.
:vnoremap jj <ESC>

"Disable the arrow keys in INSERT mode.
:inoremap <Right> <NOP>
:inoremap <Up> <NOP>
:inoremap <Down> <NOP>
:inoremap <Left> <NOP>

"Disable the arrow keys in VISUAL mode.
:vnoremap <Right> <NOP>
:vnoremap <Up> <NOP>
:vnoremap <Down> <NOP>
:vnoremap <Left> <NOP>

"Disable the arrow keys in COMMAND mode.
:noremap <Up> <NOP>
:noremap <Down> <NOP>
:noremap <Left> <NOP>
:noremap <Right> <NOP>
