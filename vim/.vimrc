""" Configurações iniciais
set nocompatible         " Must come first because it changes other options.

filetype off             " Necessary on some Linux distros for pathogen to properly load bundles

" Habilitando o Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#rc()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-git.git'
Bundle 'tsaleh/vim-supertab'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'othree/html5.vim'
Bundle "pangloss/vim-javascript"
Bundle "bling/vim-airline"
Bundle "tpope/vim-fugitive"
Bundle "jiangmiao/auto-pairs"
Bundle "scrooloose/syntastic"
Bundle "terryma/vim-multiple-cursors"
Bundle "moll/vim-node"
Bundle "jelera/vim-javascript-syntax"
Bundle "maksimr/vim-jsbeautify"
Bundle "Tagbar"
Bundle "kien/ctrlp.vim"
Bundle "tacahiroy/ctrlp-funky"
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle "tpope/vim-commentary"
Bundle "msanders/snipmate.vim"
Bundle "easymotion/vim-easymotion"
Bundle "tpope/vim-markdown"
Bundle "skywind3000/asyncrun.vim"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" plugins required 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set is                  " opcoes espertas de busca - (IncrementedSearch)
set hls                 " opcoes espertas de busca - (HighLightedSearch)
set ic                  " opcoes espertas de busca - (IgnoreCase)
set scs                 " opcoes espertas de busca - (SmartCaSe)
set magic               " opcoes espertas de busca 
set sm                  " ShowMatch: mostra o par do parenteses/chaves recem fechado
set hid                 " HIDden: nao lembro pra que servia mas era massa
set aw                  " AutoWrite: gravacao automatica a cada alteracao
set ai                  " AutoIndent: identacao automatica
set ts=4                " TabStop: numero de caracteres de avanco do TAB
set report=0            " reporta acoes com linhas
set shm=filmnrwxt       " SHortMessages: encurta as mensagem do rodape
set et                  " ExpandTab: troca TABs por espacos
set ruler               " mostra a posicao do cursor, regua
set showcmd             " mostra o comando sendo executado
set laststatus=2        " mostra N linhas de estado (status)
set textwidth=80        " quebra de linha
set bs=2                " comportamento do backspace
"set nosmartindent       " desligando pois esta padrao no CL40
set smartindent         " indentacao automatica
set visualbell          " pisca a tela ao inves de bipar
"set wrap                " forca a quebra de linha
set nowrap
set nojoinspaces        " ! coloca 2 espacos apos o . quando usando o gq
set sw=4                " numero de colunas para o comando > (ShiftWidth)
set wildmode=longest,list:full  "para completacao do TAB igual bash
set t_Co=256            " 256 colors
set backspace=indent,eol,start " faz o backpspace se comportar que nem gente 
set nu                  " numero de linhas
set cursorline          " Highlight current line
set background=dark     " eh importante o bg estar ANTES do terminfo
set pastetoggle=<c-p>   " No modo Insert, Ctrl-P liga/desliga o "paste"
set viminfo='10,\"30,:40,%,n~/.viminfo " Guarda posicao do cursor e historico da linha de comando 
set fileencodings=utf8  " sempre utf-8
set encoding=utf8       " sempre utf-8
set wildmode=longest,list " Complete files like a shell.
set wildmenu            " Enhanced command line completion.
set showmode            " Display the mode you're in.
set foldmethod=indent   " fold based on indent
"set foldmethod=syntax   " fold based on syntax file
set foldnestmax=3       " deepest fold is 3 levels
set nofoldenable        " dont fold by default
set title               " Set the terminal's title
set hidden              " Handle multiple buffers better.
set novisualbell        " sem erro na tela
set noerrorbells        " sem bip
set history=1000        " Store lots of :cmdline history
set scrolloff=3
set sidescrolloff=7
set splitbelow
set splitright
set mouse=a
set mousehide
set mousemodel=popup    " right-click pops up context menu
set ttymouse=xterm2
set sidescroll=1
set nobackup            " Don't make a backup before overwriting a file.
set nowritebackup       " And again.
set noswapfile          " Swap file is boring
set directory=/tmp      " Keep swap files in one location
set timeoutlen=500
set clipboard+=unnamed,unnamedplus " use the system clipboard for yank/put/delete
set wildignore+=*/build/*,*.egginfo,*.pyc,*.mo,*/dist/*
set modeline
set paste

" Powerline
set guifont=Droid\ Sans\ Mono\ Slashed\ for\ Powerline:h12
let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
set termencoding=utf-8

" mostrando coluna da direita
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" ligando a sintaxe colorida
syntax on

" Abreviacoes uteis para sua sanidade mental
cab W w| cab Q q| cab Wq wq| cab wQ wq| cab WQ wq

" Busca colorida em verde
hi Search ctermbg=green ctermfg=black
hi IncSearch ctermbg=black ctermfg=cyan

" Ruler e cursor sempre em branco
"hi StatusLine ctermfg=white

"" key bindings
let mapleader = ","

" Tira as cores das ocorrências de busca e recoloca (booleano)
nno <S-F11> :set hls!<bar>set hls?<CR>

" Arquivos .sh sao sempre bash, e não sh
au FileType sh let b:is_bash=1

" Python: TAB colorido e outras configuracoes
autocmd FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileType python set ts=4 tw=80 noet
au FileType python syn match pythonTAB '\t\+'
au FileType python hi pythonTAB ctermbg=blue
au FileType python hi pythonString ctermfg=lightgreen
au FileType python hi pythonRawString ctermfg=lightgreen

" Mostra os espaços em branco inúteis no final da linha 
au BufNewFile,BufRead * syn match brancomala '\s\+$' | hi brancomala ctermbg=red

" Guardar info da sintaxe desde o inicio do arquivo (nao se perde, fica lento)
syn sync fromstart
syn sync minlines=500

" Barra de espaço mapeado para PageDown no modo de comandos
noremap <Space> <PageDown>

" Clear last search highlighting
nnoremap <Space> :noh<cr>

" Easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" alternando entre terminal e editor
noremap <C-d> :sh<cr>

" mostrando tabs
syntax match Tab /\t/
hi Tab gui=underline guifg=blue ctermbg=blue

""" recarregando .vimrc ao modificar
autocmd! bufwritepost .vimrc source %

" middle-click paste
noremap! <s-insert> <middlemouse>

" auto save
autocmd BufLeave,CursorHold,CursorHoldI,FocusLost * silent! wa

"" PHP Code Sniffer
let g:phpqa_codesniffer_args = "--standard=PSR2"
let g:phpqa_codesniffer_autorun = 0

" folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" tag list
nmap <F10> :TagbarToggle<CR>

" With the following, you can press F8 to show all buffers in tabs, or to close
" all tabs (toggle: it alternately executes :tab ball and :tabo).
let notabs = 1
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

""" NERDTree
map <F2> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_new_tab=1
let g:nerdtree_tabs_autoclose=1
let g:nerdtree_tabs_synchronize_view=1
let g:nerdtree_tabs_focus_on_files=1

"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Start NERDTree
"autocmd VimEnter * NERDTree

" Jump to the main window.
autocmd VimEnter * wincmd p

"converter os TABs ja existentes
"retab

""" JsBeautify
map <c-f> :call JsBeautify()<cr>

""" airline status bar
let g:airline_enable_branch = 1
let g:airline_enable_syntastic = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" auto show tagbar
let g:tagbar_autoshowtag=1
let g:tagbar_singleclick = 1

" automatically open TagBar
"autocmd VimEnter * nested :call tagbar#autoopen(1)

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

" CtrlPFunky
"nnoremap  :CtrlPFunky
let g:ctrlp_extensions = ['funky']

" desabilitando checagem de código para html (caga tudo)
let g:syntastic_disabled_filetypes=['html']

" markdwon
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <silent> <leader>t :enew<cr>

" Move to the next buffer
nmap <silent> <leader>n :bnext<CR>

"" Move to the previous buffer
nmap <silent> <leader>p :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <silent> <leader>c :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>"

" alternando tabs
nmap <silent> <D-S>{ :tbpre
nmap <silent> <D-S>} :tbnext

