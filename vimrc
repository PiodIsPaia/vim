call plug#begin('~/.vim/plugged')

" Temas e Estética
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

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

" === Tema e Cores ===
let ayucolor="dark"        " Definir tema escuro
colorscheme ayu
hi! MatchParen cterm=bold gui=bold guibg=NONE guifg=#FFFF00

" === Atalhos ===
map q :quit<CR>            " Atalho para sair
map <C-s> :write<CR>       " Atalho para salvar

" === Configuração do NERDTree ===
let g:NERDTreeWinSize = 22
let g:NERDTreeShowHidden = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = "▸"
let g:NERDTreeDirArrowCollapsible = "▾"
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>

" === Configurações Estéticas do NERDTree ===
highlight NERDTreeDir guifg=#DCDCAA       " Cor para pastas
highlight NERDTreeFile guifg=#DCDCAA      " Cor para arquivos
highlight NERDTreeExecFile guifg=#6A9955  " Cor para arquivos executáveis
highlight NERDTreeCWD guifg=#DCDCAA gui=bold " Destacar o diretório atual
let g:NERDTreeIgnore = ['\.pyc$', '\~$', '\.swp$', '^\.git$', '__pycache__']

" === Configuração do YouCompleteMe ===
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0
let g:ycm_language_server =
  \ [{
  \   'name': 'clangd',
  \   'cmdline': ['clangd'],
  \   'filetypes': ['c', 'cpp', 'cc', 'h', 'hpp', 'objc', 'objcpp'],
  \   'project_root_files': ['compile_commands.json', '.clangd']
  \ }]

" === Vim-Airline ===
let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#formatter = 'default'

" === IndentLine ===
let g:indentLine_enabled = 1
let g:indentLine_char = '│'
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
