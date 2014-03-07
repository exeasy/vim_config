set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos

" use git in vim
Bundle 'tpope/vim-fugitive' 
" EasyMotion
Bundle 'Lokaltog/vim-easymotion'

Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
" a quick search tool
Bundle 'FuzzyFinder'
" vimwiki
Bundle 'vimwiki'
" Golden-ratio
Bundle 'golden-ratio'
" Tagbar
Bundle 'Tagbar'

Bundle 'AutoClose'

Bundle 'The-NERD-tree'

Bundle 'The-NERD-Commenter'

Bundle 'UltiSnips'

"Bundle 'Valloric/YouCompleteMe'

Bundle 'neocomplcache'
Bundle 'omnicppcomplete'
Bundle 'guicolorscheme.vim'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line

let mapleader = ","
set nocp "default codec
let g:vimwiki_list = [{'path': '~/vimwiki/',
          \ 'template_path': '~/vimwiki_html/templates/',
          \ 'template_default': 'default',
          \ 'template_ext': '.html'}]
set t_Co=256
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

"use vim's keyboard patten
set nocompatible

"record 100 line in history
set history=100

"show comfirm in handling the unsaved or readonly file
set confirm

"share the clipboard with windows
set clipboard+=x11-selection

"detection the  file type
filetype on

"load the filetype plugin
filetype indent on

"global 
set viminfo+=!

"dont multiline this word
set iskeyword+=_,$,@,%,#,-

"highlight
syntax on

hi Comment guifg=#80a0ff ctermfg=darkred
"hightlight without 100 row limit
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '%101v.*'

"status color
"highlight StatusLine guifg=green guibg=Yellow
"highlight StatusLineNC guifg=Gray guibg=White

"''''''''''''''''''''''''''''''''''''''''''''''''
"file configuration
""""""""""""""""""""""""""""""""""""""""""""""""
"dont bak
set nobackup

"dont swap
setlocal noswapfile
set bufhidden=hide

"line inserted into charactertor
set linespace=0

"auto comamnd
set wildmenu

"show line number and row number in status 
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

"cmd height
set cmdheight=2

"backsapce
set backspace=2

"allow backsapce multiline
set whichwrap+=<,>,h,l

"mouse
set mouse=a 
set ttymouse=xterm2
"no shortmess
set shortmess=atl

set report=0

set noerrorbells

set fillchars=vert:\ ,stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""
"search and match
"""""""""""""""""""""""""""""""
"highlight match
set showmatch

"highlight time
set matchtime=5

set ignorecase

set nohlsearch

set incsearch

"set list

"set listchars=tab:>-,trail:.,extends:>,precedes:<,eol:$

set scrolloff=3

set novisualbell

set laststatus=2

""""""""""""""""""""""""""""""""""""""
"texture
""""""""""""""""""""""""""""""""""""""
"auto format
set formatoptions=tcrqn

"multiline 
set autoindent

"auto indent
set smartindent

set cindent

set tabstop=4

set softtabstop=4
set shiftwidth=4

set noexpandtab

set nowrap

"set smarttab

set nu
"""""""""""""""""""""""""""""
"CTags
""""""""""""""""""""""""""""





""""""""""""""""""""""""""""""
"whitespace to fold
""""""""""""""""""""""""""""""
"set foldenable
"set foldmethod=manual
"nnoremap <space> @=((foldclosed(line('.'))<0)?'zx':'zo')<CR>


filetype plugin indent on
"set completeopt=longest,menu


colorscheme inkpot
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><space>  pumvisible() ? neocomplcache#close_popup() . "\<SPACE>" : "\<SPACE>"
inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"set grepprg=grep\ -nH\ $*
"let g:tex_flavor = "latex"
nmap > <c-w>>
nmap < <c-w><
nmap - <c-w>-
nmap + <c-w>+
nmap = <c-w>=
imap jk <esc>
"let g:pathogen_disabled = ['imaps']
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
"nnoremap <silent><F8> :Tlist<CR>
nnoremap <silent><F8> :TagbarToggle<CR>

let NERDTreeShowBookmarks = 1
nnoremap <silent><F9> :NERDTreeToggle<CR>
nmap <c-m> <F9><F9>
nmap <F12> :wa<CR> :!ctags -R --c-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
nmap <F6> gg=G <c-o>
vmap <leader>y "+y
nmap <leader>p "+p

" golden ratio config
let g:golden_ratio_autocommand = 0
nmap <leader>a <Plug>(golden_ratio_resize)
nnoremap <leader>z <c-w><Bar><c-w>_

" full screen for gvim
function! ToggleFullScreen()
	    call system("wmctrl -r :ACTIVE: -b toggle,fullscreen")
endfunction	
map <silent> <F11> :call ToggleFullScreen()<CR>
:set go-=m go-=T go-=r go-=L
" vimwiki shortcuts
nnoremap <leader>ss :VimwikiAll2HTML<CR>:Vimwiki2HTMLBrowse<CR>
"-- omnicppcomplete setting --
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype  in popup window
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_DefaultNamespaces=["std"]
