let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/ryanoasis/vim-devicons'
call plug#end()

set encoding=UTF-8


colorscheme dracula
"vim.cmd.colorscheme "catppuccin-mocha"
"let g:airline_theme='bubblegum'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline#extensions#tabline#formatter = 'default'
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp \|bd #<cr>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree
set guifont=Fira\ Code\ Nerd\ Font\ 12
let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    \"Staged"    : "#0ee375",  
    \"Modified"  : "#d9bf91",  
    \"Renamed"   : "#51C9FC",  
    \"Untracked" : "#FCE77C",  
    \"Unmerged"  : "#FC51E6",  
    \"Dirty"     : "#FFBD61",  
    \"Clean"     : "#87939A",   
    \"Ignored"   : "#808080"   
\}                         


let g:NERDTreeIgnore = ['^node_modules$']

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

nmap <leader>do <Plug>(coc-codeaction)

nmap <leader>rn <Plug>(coc-rename)

nmap <C-Left> :NERDTreeFocus<CR>
nmap <C-Down> :NERDTreeToggle<CR>
let g:coc_global_extensions = [
    \'coc-tsserver',
    \'coc-json',
    \'coc-css',
    \'coc-eslint',
    \'coc-prettier'
\]

set mouse=a
set number
set hidden
set cursorline
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set encoding=utf8
set history=5000
set clipboard=unnamedplus

