autocmd BufWritePre * :%s/\s\+$//e
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
