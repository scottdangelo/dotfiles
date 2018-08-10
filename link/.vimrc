execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd BufWritePre * :%s/\s\+$//e
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

map <C-n> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=3
let g:syntastic_python_checkers=['flake8']
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_json_checkers=['jsonlint']

:command SR SyntasticReset
nmap <F8> :TagbarToggle<CR>
