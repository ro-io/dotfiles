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
:match colorcolumn "\%>80v.\+" "highlights text that goes past column 80.
:set nocompatible
:set updatetime=150
:set expandtab "Inserts spaces instead of tabs
":set tabstop=8
":set shiftwidth=8
:syntax on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
                "^ disables auto comment formating
"Plugins
call plug#begin('~/.vim/plugged')

"Colors
Plug 'junegunn/seoul256.vim'

Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'

"Syntax highlighting for Wren lang
Plug 'lluchs/vim-wren'

"Initialize plugin system
call plug#end()

if &term =~ '256color'
          " disable Background Color Erase (BCE) so that color schemes
          " render properly when inside 256-color GNU screen.
        set t_ut=
endif

"lightline.vim settings
:set laststatus=2 "Required for lightline to show
:set noshowmode "Hides the original INSERT/VISUAL indicator
"Setting lightline.vim's colorscheme
let g:lightline = {
	\ 'colorscheme': 'default',
	\ }

"Setting vim's colorscheme
":colo seoul256
:colo default

"Set the colorcolumn's color to black (mmv).
":highlight colorcolumn ctermbg=black

if exists('&signcolumn')  "Vim 7.4.2201 and up
	set signcolumn=yes
else
	let g:gitgutter_sign_column_always = 1
endif

"Changes the SignColumn color to match the line numbers.
:highlight clear SignColumn

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
