call pathogen#infect() 
call pathogen#helptags()

syntax on
filetype plugin indent on

" jj acts as escape 
:imap jj <Esc>

" Gets rid of issue where backspace was not working on anything but new edits
set backspace=indent,eol,start

" Line Numbers
set nu

" Tab width
set tabstop=2
set shiftwidth=2

" Highlight Search Terms
set hlsearch

" Toggle relative line numbers and absolute line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

" ctrl + n toggles line numbers
nnoremap <C-n> :call NumberToggle()<cr>
nmap <F8> :TagbarToggle<CR>

" relative when focused, absolute when not focused
:au FocusLost * :set number
:au FocusGained * :set relativenumber

" Relative in command mode Absolute in interactive mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" vim-go Additions
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)


let mapleader=" "

" Activate YouCompleteMe in go files only
let g:ycm_filetype_whitelist = { 'go': 1 }
