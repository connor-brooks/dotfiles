set nocompatible
filetype off
syntax on
filetype plugin indent on
" Security
set modelines=0
" Show line numbers (relative)
set number
set relativenumber
" no beep
set visualbell
set encoding=utf-8
" Whitespace & linebreaks
set wrap
set textwidth=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set linebreak
set nolist
" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
" Move up/down editor lines
nnoremap j gj
nnoremap k gk
" Allow hidden buffers
set hidden
" Rendering
set ttyfast
" Status bar
set laststatus=2
" Last line
set showmode
set showcmd
" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search
" 256 color terminal
set t_Co=256
" No arrow keys
nnoremap <Left> <Nop>
"vnoremap <Left> <Nop>
inoremap <Left> <Nop>
nnoremap <Right> <Nop>
"vnoremap <Right> <Nop>
inoremap <Right> <Nop>
nnoremap <Up> <Nop>
"vnoremap <Up> <Nop>
inoremap <Up> <Nop>
nnoremap <Down> <Nop>
"vnoremap <Down> <Nop>
inoremap <Down> <Nop>
" For formatting and spelling
noremap <F3> :Autoformat<CR>
noremap <F4> :set spell!<CR>
set complete+=kspell
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
" show horiziontal menu (file picker)
set wildmenu
" Short messags
set shortmess=I
" Stop datatype indenting when using c
set cino+=t0
" Use c highlighing for frag shaders
au BufReadPost *.frag set syntax=c

" Load plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'xuhdev/vim-latex-live-preview'
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'w0rp/ale'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'junegunn/goyo.vim'
Plugin 'jpalardy/vim-slime'
call vundle#end()

" For ctrl+p 
nnoremap <leader>. :CtrlPTag<cr>
nmap <F8> :TagbarToggle<CR>

" For nerdtree
map <C-n> :NERDTreeToggle<CR>
noremap <F5> :set foldmethod=syntax<CR>:TagbarToggle<CR>:NERDTreeToggle<CR>:wincmd l<CR>
noremap <Space> za

" For latex live preview
let g:livepreview_previewer = 'mupdf.inotify'

" ALE plugin settings
let g:ale_sign_column_always = 1
let g:ale_python_auto_pipenv = 1
highlight ALEError ctermbg=none cterm=underline
highlight ALEWarning ctermbg=none cterm=underline
let g:ale_linters = {'python': [ 'flake8']}
"let g:ale_python_flake8_executable = '/usr/bin/env python3'

"YCM config
" disable annoying preview in YMC
set completeopt-=preview
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>:
let g:ycm_show_diagnostics_ui = 0
" Force ycm to use python3.5 (Don't need atm)
" let g:ycm_python_binary_path = '/usr/bin/python3.5'
" let g:ycm_python_binary_path = '/usr/bin/env python3'


" For airline plugin
let g:airline_powerline_fonts = 0
let g:airline_theme="base16_shell"
let g:airline_base16_monotone = 1
let g:airline_base16_improved_contrast = 1
highlight SignColumn ctermbg=black
let g:airline_section_z = ""
let g:airline_section_y = ""

" For goyo
noremap <F6> :Goyo<CR>

" For base16 theme 
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
" Keep the line number bar black
highlight clear LineNr
highlight clear CursorLineNr
highlight SignColumn ctermbg=black

" For Slime
let g:slime_target = "tmux"
