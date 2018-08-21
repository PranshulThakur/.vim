set hlsearch " highlight searches
set number " line numbers
set ruler " show the cursor position all the time
set ai " autoindenting
set history=50 " keep 50 lines of command line history

" Buffer next and previous using tab and shift+tab
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Open the corresponding .c or .h file in the buffer
map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

execute pathogen#infect()
" Ignore some directories for CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/deprecated/*,*/*build*/*,*/vendor
" Solarized colorscheme
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Show tab as >---
"set list
"set listchars=tab:>-

set tabstop=4 " how many columns a tab counts for.
set shiftwidth=4 " how many columns text is indented with the reindent operations (<< and >>)
set softtabstop=4 " how many columns vim uses when you hit Tab in insert mode
set noexpandtab " Do not conver tab into spaces
"set expandtab=4 " Converts tab into spaces

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
autocmd BufNewFile,BufRead *DPGSolver/* source ~/Codes/DPGSolver/vim/c_structs.vim
