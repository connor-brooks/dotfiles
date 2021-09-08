" For Vundle, as per Github instructions
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" For TMUX intergration
Plugin 'christoomey/vim-tmux-navigator'
" Latex plugin
Plugin 'xuhdev/vim-latex-live-preview'

" All of your Plugins must be added before the following line
call vundle#end()
"End of Plugin config

" disable annoying vim intro
set shm+=I

" add numbers to side
set number
set relativenumber

"show tabs as two space chars
set shiftwidth=2
set tabstop=2

" allow intelligent auto indent based on filetype and autoindent
filetype indent plugin on
set autoindent

" enable syntax highlighting
if has('syntax')
	syntax on
endif

" set search highlighting on
set hlsearch
" case sensivitiy
set ignorecase
set smartcase
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> "space to hide search results


" Nice linewrapping and breaking
set wrap
set linebreak

" F5 for toggle spell check
map <F5> :setlocal spell! spelllang=en_us<CR>

" F3 for autoformat (Used to be plugin, built in is good enough)
"noremap <F3> :Autoformat<CR>
noremap <F3> gg=G<CR>

" For LaTeX
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'

" Stop annoying red in go
let g:go_highlight_trailing_whitespace_error=0
