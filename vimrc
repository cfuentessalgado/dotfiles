"-----------VUNDLE----------
so ~/.vim/plugins2.vim
syntax enable

set backspace=indent,eol,start
set number
set hlsearch
set nowrap
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
" colorscheme atom-dark-256
set termguicolors
colorscheme palenight
"highlight LineNr ctermbg=bg guibg=bg
"hi vertsplit guifg=bg guibg=bg ctermbg=bg ctermfg=bg
set guioptions=-l
set guioptions=-L
set guioptions=-r
set guioptions=-R
set linespace=5
set splitbelow
set splitright
"-----------MAPPINGS---------"
nmap <Leader>lv :source ~/.vimrc<cr>
nmap <Leader>ev :e ~/.vimrc<cr>
nmap <Leader>ip :PluginInstall<cr>
nmap <Leader>ep :vs ~/.vim/plugins2.vim<cr>
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>qq :bd<cr>
nmap <Leader>ss :w<cr>
nmap <c-e> :CtrlPMRUFiles<cr>
augroup autosourcing
	autocmd!
        autocmd BufWritePost ~/.vimrc source $MYVIMRC
augroup END

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>



"-----------CTRLP-----------

let g:ctrlp_custom_ignore = 'node_modules\DS_Store\git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**
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
let g:user_emmet_leader_key=','
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType blade setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType vue setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
noremap <Leader>bsc i div.container>div.card>div.card-header+div.card-body
imap jj <Esc>
noremap <Leader>s :w<CR>

" Latex

noremap <Leader>latex :!lualatex % <CR>

" eslint
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'


" PHP CS FIXER
"
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
let g:php_cs_fixer_verbose = 0 
nnoremap <silent><leader>ff :call PhpCsFixerFixFile()<CR>
nnoremap <silent><leader>fd :call PhpCsFixerFixDirectory()<CR>
