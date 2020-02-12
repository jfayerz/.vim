set ts=4
set nu

" install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - Do not use typical vim directories like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Plug 'pangloss/vim-javascript'
" Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

" Unmanaged plugin (manually installed and updated
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

"let g:javascript_plugin_jsdoc = 1
"let g:javascript_plugin_ngdoc = 1
"let g:javascript_plugin_flow = 1
"
"augroup javascript_folding
"	au!
"	au FileType javascript setlocal foldmethod=syntax
"augroup END
