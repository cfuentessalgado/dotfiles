"-----------VUNDLE----------
so ~/.vim/plugins.vim
syntax enable

set backspace=indent,eol,start
set number
set hlsearch
set incsearch
let mapleader = ','
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
"----------visual"
colorscheme palenight
highlight LineNr ctermbg=bg guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg
hi vertsplit guifg=bg guibg=bg ctermbg=bg ctermfg=bg
set guioptions=-l
set guioptions=-L
set guioptions=-r
set guioptions=-R
set linespace=5
set splitbelow
set splitright
set t_CO=256
set noerrorbells visualbell t_vb=
"-----------MAPPINGS---------"
nmap <Leader>lv :source ~/.vim/vimrc<cr>
nmap <Leader>ev :e ~/.vim/vimrc<cr>
nmap <Leader>ip :PluginInstall<cr>
nmap <Leader>ep :vs ~/.vim/plugins.vim<cr>
nmap <c-e> :CtrlPMRUFiles<cr>
augroup autosourcing
	autocmd!
        autocmd BufWritePost ~/.vim/vimrc source %
augroup END

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>



"-----------CTRLP-----------

let g:ctrlp_custom_ignore = 'node_modules\DS_Store\git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"Make NERDTree easier to toggle.
nnoremap <F2> :NERDTreeToggle<cr>

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" SNIPPETS
nmap <Leader>es :e ~/.vim/snippets/
imap <tab> <Plug>snipMateNextOrTrigger

autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType blade setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
