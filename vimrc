call plug#begin('~/.vim/plugged')

" Temas e Estética
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lambdalisue/nerdfont.vim'
Plug 'joshdick/onedark.vim' " Tema moderno
Plug 'morhetz/gruvbox'      " Alternativa ao tema escuro
Plug 'vim-airline/vim-airline-themes'

" Funcionalidades Adicionais
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Stoozy/vimcord'
Plug 'Yggdroot/indentLine'

" Autocompletar
Plug 'ycm-core/YouCompleteMe'

call plug#end()

" === Configurações Gerais ===
set nu!                    " Mostrar números de linha
set mouse=a                " Habilitar uso do mouse
set title                  " Mostrar o título do terminal
set encoding=utf-8         " Definir a codificação para UTF-8
set tabstop=2 shiftwidth=2 expandtab softtabstop=2
set termguicolors          " Habilitar cores no terminal
set background=dark        " Tema para terminais escuros

" === Atalhos ===
map q :quit<CR>            " Atalho para sair
map <C-s> :write<CR>       " Atalho para salvar

" === Tema e Cores ===
colorscheme onedark        " Tema Onedark 
hi! MatchParen cterm=bold gui=bold guibg=NONE guifg=#FFFF00

" === Ativar Devicons ===
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

" === Configuração do NERDTree ===
let g:NERDTreeWinSize = 25
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = "▸"
let g:NERDTreeDirArrowCollapsible = "▾"
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>
highlight NERDTreeDir guifg=#56B6C2       
highlight NERDTreeExecFile guifg=#98C379  

" === Configuração do YouCompleteMe (C/C++ Exclusivo) ===
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_completion_trigger_delay = 100
let g:ycm_show_diagnostics_ui = 1
let g:ycm_language_server =
  \ [{
  \   'name': 'clangd',
  \   'cmdline': ['clangd'],
  \   'filetypes': ['c', 'cpp', 'cc', 'h', 'hpp', 'objc', 'objcpp'],
  \   'project_root_files': ['compile_commands.json', '.clangd']
  \ }]

" === Vim-Airline ===
let g:airline_theme = 'nord_minimal'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#formatter = 'default'

" === IndentLine ===
let g:indentLine_enabled = 1
let g:indentLine_char = '⦙'
let g:indentLine_color_gui = '#4B5263'

" === Navegação de Buffers ===
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-w> :bdelete<CR>

" === Ativar destaque para parênteses, chaves e colchetes ===
let g:matchparen_matchfuzzy = 1
let g:matchparen_deferred = 1
let g:matchparen_timeout = 500
highlight MatchParen ctermfg=black ctermbg=yellow guifg=#FF00FF guibg=#2E2E2E
