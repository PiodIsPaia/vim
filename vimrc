call plug#begin('~/.vim/plugged')

" Plugins
Plug 'ayu-theme/ayu-vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Stoozy/vimcord'

call plug#end()

" === Configurações Gerais ===
set nu!                    " Mostrar números de linha
set mouse=a                " Habilitar uso do mouse
set title                  " Mostrar o título do terminal
set encoding=utf-8         " Definir a codificação para UTF-8
set tabstop=2              " Número de espaços por tabulação
set shiftwidth=2           " Número de espaços para indentação
set expandtab              " Usar espaços em vez de tabs
set softtabstop=2          " Definir a quantidade de espaços em uma tabulação suave

" === Configuração do Tema ===
set termguicolors          " Habilitar cores no terminal
let ayucolor="dark"        " Definir a cor para o tema escuro
colorscheme ayu            " Aplicar o tema Ayu
hi! MatchParen cterm=bold gui=bold guibg=NONE guifg=#FFFF00

" === Atalhos e Mapeamentos ===
map q :quit<CR>            " Atalho para sair
map <C-s> :write<CR>       " Atalho para salvar
map <C-e> :NERDTreeToggle<CR>  " Atalho para abrir/fechar o NERDTree
map <C-h> :wincmd h<CR>    " Alterna para a janela à esquerda (NERDTree)
map <C-l> :wincmd l<CR>    " Alterna para a janela à direita (arquivo)

" === Configuração do YouCompleteMe ===
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview    " Desabilitar a visualização de preview
let g:ycm_show_diagnostics_ui = 0  " Desabilitar a interface de diagnóstico
let g:ycm_language_server =
  \ [{
  \   'name': 'clangd',
  \   'cmdline': ['clangd'],
  \   'filetypes': ['c', 'cpp', 'cc', 'h', 'hpp', 'objc', 'objcpp'],
  \   'project_root_files': ['compile_commands.json', '.clangd']
  \ }]

" === Configuração do Vim Airline ===
let g:airline_theme = 'bubblegum'

" Separadores e ícones
let g:airline_left_sep = ''   
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Símbolos do Airline
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = '  '
let g:airline_symbols.dirty = '⚡'
let g:airline_symbols.diagnostics = ''
let g:airline_symbols.git = ''
let g:airline_symbols.vi_mode = ''

" === Configuração do NERDTree ===
let g:NERDTreeWinSize = 22                " Definir o tamanho da janela do NERDTree
let g:NERDTreeShowHidden = 0              " Mostrar arquivos ocultos
let g:NERDTreeMinimalUI = 1               " Remover barra de ajuda e deixar mais limpo
let g:NERDTreeDirArrowExpandable = "▸"    " Setas para pastas expansíveis
let g:NERDTreeDirArrowCollapsible = "▾"   " Setas para pastas colapsáveis

" === Configurações Estéticas do NERDTree ===
highlight NERDTreeDir guifg=#DCDCAA       " Cor para pastas
highlight NERDTreeFile guifg=#DCDCAA      " Cor para arquivos
highlight NERDTreeExecFile guifg=#6A9955  " Cor para arquivos executáveis
highlight NERDTreeCWD guifg=#DCDCAA gui=bold " Destacar o diretório atual

" === Configurações de Ícones (via DevIcons) ===
let g:webdevicons_enable = 1              " Habilitar ícones nos arquivos
let g:webdevicons_conceal_nerdtree = 1    " Ocultar nomes padrões
let g:webdevicons_enable_fancy = 1        " Habilitar ícones estilosos
let g:NERDTreeGitStatusUseNerdFonts = 1   " Usar fontes nerd para status Git

" Ocultar arquivos específicos no NERDTree
let g:NERDTreeIgnore = ['\.pyc$', '\~$', '\.swp$', '^\.git$', '__pycache__']

" Desativar o menu
autocmd FileType nerdtree setlocal norelativenumber nonumber " Remover números
autocmd FileType nerdtree silent! unmap ?                   " Desativar o atalho '?'

" Atalho para abrir/fechar o NERDTree
map <C-e> :NERDTreeToggle<CR>       " Alternar o NERDTree
map <C-f> :NERDTreeFind<CR>         " Localizar o arquivo atual no NERDTree

" === Outros Ajustes ===
let g:nerdtree_tabs_open_on_console_startup = 1  " Abrir o NERDTree na inicialização

" Ativar suporte à Tabline no Vim-Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0

" Mostrar apenas o nome do buffer
let g:airline#extensions#tabline#formatter = 'default'

" Exibir números de buffers para navegação
let g:airline#extensions#tabline#buffer_nr_show = 1

" Separadores personalizados para um visual moderno
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" Ativar destaque de buffer ativo
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#current_left_sep = ''
let g:airline#extensions#tabline#current_right_sep = ''

" Mostrar ícone de modificação (para arquivos não salvos)
let g:airline#extensions#tabline#modified = '⚡'

" === Atalhos para Navegação de Buffers ===
nnoremap <Tab> :bnext<CR>         " Ir para o próximo buffer
nnoremap <S-Tab> :bprevious<CR>   " Ir para o buffer anterior
nnoremap <C-w> :bdelete<CR>       " Fechar o buffer atual


