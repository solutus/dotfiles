" Vundle setup ----------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" Fugitive {{{
"  nnoremap <leader>gs :Gstatus<cr>
"  nnoremap <leader>gc :Gcommit<space>
"  nnoremap <leader>gd :Gdiff<cr>
"" }}}
"Plugin 'airblade/vim-gitgutter'
Plugin 'ruscmd'
Plugin 'syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required !!!!!!!!!!!!! REVERT IT
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" -----------------------------------------------------------------------------
set nocompatible               " be iMproved
set incsearch
set hlsearch
"set number
"set tabstop=2 shiftwidth=2 expandtab
set autoindent
"set smartindent
set ignorecase
set smartcase
set colorcolumn=115
highlight ColorColumn ctermbg=gray guibg=gray
syntax enable
set t_Co=16
"set background=light
set background=dark

" tmux
if !has("gui_running")
    set t_Co=256
    set term=screen-256color
endif
" solarized options
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
"colorscheme smyck

" set clipboard=unnamedplus
set clipboard=unnamed
set clipboard+=unnamedplus
filetype off                   " required!

" own bundles
Plugin 'kien/ctrlp.vim'

Bundle 'scrooloose/nerdtree'
" nmap <leader>ne :NERDTree<cr>
map <leader>r :NERDTreeFind<cr>

Bundle 'jwhitley/vim-matchit'

"Plugin 'Xuyuanp/nerdtree-git-plugin'
"set shell=sh
set shell=zsh

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)|node_modules$',
    \ 'file': '\v\.(exe|so|dll|log)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
let g:ctrlp_max_files=0
let g:ctrlp_dotfiles=1

" Plugin 'airblade/vim-gitgutter'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'kchmck/vim-coffee-script'

Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
let g:ackprg="ack-grep -H --nocolor --nogroup --nocolumn"
" run `ln -s /usr/bin/ack-grep /usr/bin/ack`

Plugin 'szw/vim-tags' " ctags
" search first in current directory then file directory for tag file
set tags=tags,./tags


Bundle 'tpope/vim-rails'
Plugin 'lucapette/vim-ruby-doc'

Plugin 'elixir-lang/vim-elixir'
syntax on
nnoremap <F5> :buffers<CR>:buffer<Space>
let g:gitgutter_eager = 0

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" different tabs for different files
autocmd FileType * set tabstop=2 shiftwidth=2 expandtab
autocmd FileType cpp set tabstop=4 shiftwidth=4 expandtab
autocmd FileType javascript set tabstop=2 shiftwidth=2 expandtab
au BufEnter *.js set ai sw=4 ts=4 sta et fo=croql
autocmd FileType make setlocal noexpandtab


" replace trailing whitespaces
autocmd BufWritePre *.rb,*.erb,*.haml,*.js,*.coffee,*.css,*.scss,*.builder,*.cc,*c,*.cpp,*.h,*.hh,*.hpp,*.md,*.ex,*.eex :%s/\s\+$//e

" GVIM options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
"set shellcmdflag=-ic
