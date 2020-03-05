""" PLUGIN CALL """

call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'

Plug 'plasticboy/vim-markdown'
    let g:vim_markdown_folding_disabled = 1
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()

""" SYNTAX AND EDITOR OPTIONS """

syntax enable
filetype plugin indent on

set number relativenumber "Show line numbers
set showcmd "Show last command
set mouse=a
set cursorline
set hlsearch " hilight
set incsearch " jump to best fit
" Turn off seach hilighting with <CR>.
nnoremap <CR> :nohlsearch<CR><CR>

""" Tab settings
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"""" 2. Key Bindings.
" More convenient movement when lines are wrapped.
nmap j gj
nmap k gk
nnoremap B ^
nnoremap E $

" Make statusline appear even with only single window.
set laststatus=2

" vim: set ft=vim foldmethod=marker ts=4 sw=4 tw=80 et :
