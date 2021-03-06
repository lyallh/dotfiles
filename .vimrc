" set window size of gvim
if has('gui_running')
  set columns=100
endif

" colour adjustments for dark background terminal
set background=dark
hi TabLineFill cterm=bold ctermbg=0

set nocompatible " Use Vim settings, rather than Vi settings. Must be first
" set autoindent " Use the indent from the previous line
set smartindent

set tabstop=2
set softtabstop=2 " backspacing on a spaced tab will delete the 4 spaces not just one
set shiftwidth=2
set expandtab " insert spaces instead of tab character
set showmatch
set ruler " show the cursor position all the time
set showcmd " display incomplete commands

" Search preferences
set incsearch " make search act like search in modern browsers
set nohls
set ignorecase
set smartcase " If pattern contains an uppercase letter, make search case sensitive


" smartindent mode for python files
autocmd BufRead,BufNewFile *.py setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" C/C++ indentation 2 spaces following google style guide
set cinoptions=>2 " indent 2 spaces
autocmd BufRead,BufNewFile *.c,*.cc,*.cpp,*.h setlocal cindent expandtab

" need tabs for makefiles
autocmd FileType make set noexpandtab

" set winminheight=0      " Allow windows to get fully squashed

"
" Switch between windows, maximizing the current window
"
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

" map <F2> :NERDTreeToggle<CR>
map <F2> :ls<CR>:b<Space>
set pastetoggle=<F3>

" Set the switch buffer command :sb to switch to tab containing that buffer
" instead of default behaviour of splitting current window
" Can then switch tab using :sb {search string}
set switchbuf=usetab

" Allow use of . command in visual mode to repeat last command on selection
" (https://danielmiessler.com/study/vim/)
vnoremap . :norm.<CR>

" Pathogen
execute pathogen#infect()
" Enable loading of plugin and indent files for specific file types
filetype plugin indent on
" Activate solarized colorscheme
syntax enable
  " Use the degraded 256 color mode until solarized is set up in terminal too
  "set t_Co=256
  "let g:solarized_termcolors=256
set t_Co=16
set number
colorscheme solarized
