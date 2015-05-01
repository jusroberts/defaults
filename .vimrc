let mapleader=" "
nnoremap <leader>so :so~/.vimrc<cr>
nnoremap <leader>w :wincmd w<cr>
set nocompatible " be iMproved, required 
filetype off " required 
if has("autocmd") 
filetype indent plugin on 
endif 
 
 " set the runtime path to include Vundle and initialize 
 set rtp+=~/.vim/bundle/Vundle.vim 
 call vundle#begin()
                            
									 
if filereadable(expand("~/.vimrc.bundles"))                                    
      source ~/.vimrc.bundles                                            
  endif                                                                  
call vundle#end()            " required                                        
filetype plugin indent on                                                      
									 
syntax on 
color monokai
set wildmenu
set wildmode=longest:full,full
set expandtab
set noswapfile
set autoread
set shiftwidth=2
set softtabstop=2
set tabstop=2 
set number
set autoindent
set path=$PWD/**

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


au BufNewFile,BufRead *.go set filetype=go
