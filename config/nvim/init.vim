call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'neovim/nvim-lspconfig'
Plug 'ervandew/supertab'
Plug 'danilo-augusto/vim-afterglow'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'xiyaowong/nvim-transparent'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
set mouse=a
set clipboard=unnamedplus
set completeopt=longest,menu,noselect
set tabstop=4 shiftwidth=4 expandtab
syntax on
colorscheme afterglow

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1

" specify browser to open preview page
" default: ''
let g:mkdp_browser = 'qutebrowser'

let g:transparent_enabled = v:true
hi SignColumn cterm=NONE ctermbg=NONE ctermfg=NONE
let g:gitgutter_set_sign_backgrounds = 1
highlight GitGutterAdd    ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
autocmd BufWritePost * GitGutter
