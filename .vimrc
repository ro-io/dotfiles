:set number
:set relativenumber
:set colorcolumn=80

:syntax on
:colorscheme default

"Set the colorcolumn's color to light-grey (mmv).
:highlight colorcolumn ctermbg=7

"Set the combination `jj` to escape INSERT mode. 
:inoremap jj <ESC>

"Disable the arrow keys in INSERT mode.
:inoremap <Right> <NOP>
:inoremap <Up> <NOP>
:inoremap <Down> <NOP>
:inoremap <Left> <NOP>

"Disable the arrow keys in COMMAND mode.
:noremap <Up> <NOP>
:noremap <Down> <NOP>
:noremap <Left> <NOP>
:noremap <Right> <NOP>
