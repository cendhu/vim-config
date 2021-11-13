 " set runtimepath^=~/.vim runtimepath+=~/.vim/after
 " let &packpath = &runtimepath
 " source ~/.vimrc
"


call plug#begin('~/.config/nvim/plugged')
	" Plug 'mhinz/vim-startify'
	Plug 'jiangmiao/auto-pairs'
	Plug 'unkiwii/vim-nerdtree-sync'
	" Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
	Plug 'majutsushi/tagbar'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'flazz/vim-colorschemes'
	Plug 'AndrewRadev/splitjoin.vim'
	Plug 'ruanyl/vim-gh-line'
	Plug 'fatih/vim-go'
	"Plug 'w0rp/ale'
    " Plug 'dense-analysis/ale'
    Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-commentary'
	Plug 'NLKNguyen/papercolor-theme'
	" Plug 'ctrlpvim/ctrlp.vim'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'mileszs/ack.vim'
	" Plug 'Shougo/denite.nvim'
	"Plug 'devjoe/vim-codequery'
	Plug 'tpope/vim-dispatch'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'scrooloose/nerdtree'
	" Plug 'sheerun/vim-polyglot'
	Plug 'easymotion/vim-easymotion'
	" Plug 'maxbrunsfeld/vim-yankstack'
	" Plug 'iberianpig/tig-explorer.vim'
	" Plug 'rbgrouleff/bclose.vim'
	Plug 'junegunn/gv.vim'
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'brooth/far.vim'
	" Plug 'ronakg/quickr-cscope.vim'
	"Plug 'blueyed/vim-qf_resize'
	"Plug 'HerringtonDarkholme/yats.vim'
	Plug 'tpope/vim-fugitive'
	" Plug 'derekwyatt/vim-scala'
	" Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Plug 'Shougo/unite.vim'
	Plug 'frazrepo/vim-rainbow'
	" Plug 'mbbill/undotree'
	" Plug 'tpope/vim-eunuch'
  	 Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
	" Plug 'artur-shaik/vim-javacomplete2'
"	Plug 'nsf/gocode', {'rtp': 'nvim/'}
"	Plug 'vim-syntastic/syntastic'
	" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
	" Plug 'zchee/deoplete-jedi'
	" Plug 'Shougo/deol.nvim'
	" Plug 'haya14busa/incsearch-fuzzy.vim'
	" Plug 'haya14busa/incsearch.vim'
	" Plug 'ensime/ensime-vim'
	" Plug 'Shougo/neosnippet.vim'
    " Plug 'Shougo/neosnippet-snippets'
	Plug 'SirVer/ultisnips'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	" Plug 'mkitt/tabline.vim'
	" Plug 'Shougo/echodoc.vim'
	" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	" Plug 'zchee/deoplete-go', { 'do': 'make'}
    " Plug 'xolox/vim-colorscheme-switcher'
	" Plug 'xolox/vim-misc'
	" Plug 'morhetz/gruvbox'
	Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
    " Plug 'neovim/nvim-lsp'
    Plug 'matsen/nvim-colors-solarized'
    Plug 'neovim/nvim-lspconfig'
    " Plug 'nvim-lua/completion-nvim'
    Plug 'ray-x/lsp_signature.nvim'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    " Plug 'codota/tabnine-vim'
call plug#end()

" Configuration for vim-scala
" au BufRead,BufNewFile *.sbt set filetype=scala

" autocmd BufEnter *.c colorscheme Benokai
" autocmd BufEnter *.c syntax on
" autocmd BufEnter *.h colorscheme Benokai
" autocmd BufEnter *.h syntax on
" autocmd BufEnter *.c highlight TagbarSignature guifg=Red ctermfg=Red
" autocmd BufEnter *.h highlight TagbarSignature guifg=Red ctermfg=Red

lua require("lsp_config")

autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
autocmd BufWritePre *.go lua goimports(1000)

let g:rainbow_active = 1
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

let mapleader = ','

silent! cs add $CSCOPE_DB
let g:quickr_cscope_use_qf_g = 1


" let g:solarized_termcolors=256
syntax enable
" set background=dark
" colorscheme solarized
set background=dark
colorscheme PaperColor
" " colorscheme Benokai
" colorscheme gruvbox
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark " or light
" colorscheme solarized
" colorscheme solarized
" set termguicolors
set noswapfile
set nobackup
set nowritebackup
set number
set relativenumber
set incsearch
set hlsearch
set cursorline
set mouse=
set autochdir
set ignorecase
set autoindent
set smartindent
set clipboard=unnamedplus
set ruler
set shell=/bin/bash
set tabstop=4
set expandtab ts=4 sw=4 ai
set inccommand=split

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>


"au FileType qf wincmd J
let g:codequery_trigger_build_db_when_db_not_found = 1
" Custom your `CodeQuery Text` commands
let g:codequery_find_text_cmd = 'Ack!'
let g:codequery_find_text_from_current_file_dir = 0
" 0 => search from project dir (git root directory -> then the directory containing xxx.db file)
" 1 => search from the directory containing current file
" If you use ':CodeQuery Symbol' in a txt file, of course, it will fail due to wrong filetype.
" With the following option set to 1, ':CodeQuery Text' will be automatically sent when your query fails.
let g:codequery_auto_switch_to_find_text_for_wrong_filetype = 0
let g:codequery_db_path = "/Users/senthil/go/src/github.com/hyperledger/fabric"




" let g:ctrlp_map = ''
" nnoremap <c-l> :CtrlP /Users/senthil/go/src/github.com/hyperledger/fabric<cr>
" onoremap <c-l> <ESC>:CtrlP /Users/senthil/go/src/github.com/hyperledger/fabric<cr>
let g:fzf_preview_window = ''
nnoremap <c-p> :FZF<cr>
inoremap <c-p> <ESC>:FZF<cr>
nnoremap f<c-p> :FZF $FABRIC<cr>
inoremap f<c-p> :FZF $FABRIC<cr>
nnoremap b<c-p> :FZF $ORION<cr>
inoremap b<c-p> :FZF $ORION<cr>


nnoremap <c-l> :GFiles<cr>
inoremap <c-l> <ESC>:GFiles<cr>

nnoremap <c-h> :History<cr>
inoremap <c-h> <ESC>:History<cr>

set backspace=indent,eol,start
set list lcs=tab:\¦\ 

nmap <F6> :TagbarToggle<CR>
" let g:tagbar_iconchars = ['▷', '◢']
" autocmd BufEnter * nested :call tagbar#autoopen(0)
" autocmd vimenter * Tagbar
"

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_decls_includes = "func,type"
let g:go_auto_sameids = 0
let g:go_auto_type_info = 0
let g:go_fmt_command = "gofmt"
let g:go_imports_mode = "goimports"
let g:go_def_mode = ''
let g:go_referrers_mode = ''
let g:go_implements_mode = ''
let g:go_fmt_autosave = 0
let g:go_metalinter_autosave = 0
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'godox', 'gocritic', 'scopelint', 'prealloc', 'unparam', 'deadcode', 'gosimple', 'ineffassign', 'staticcheck', 'structcheck', 'unused', 'depguard']
" let g:go_def_mode = 'godef'
" let g:go_snippet_engine = "ultisnips"
let g:go_def_mapping_enabled = 0
let g:go_code_completion_enabled = 0
let g:go_gopls_enabled = 0
" autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

" let g:ale_sign_warning = '⚠'
" nmap <silent> [n <Plug>(ale_previous_wrap)
" nmap <silent> ]n <Plug>(ale_next_wrap)
" let g:ale_linters = {
" \   'go': ['revive', 'gopls'],
" \}
" let g:ale_linters = {
"             \ 'go': ['gopls'],
"             \ }
" You can disable this option too
" if you don't want linters to run on opening a file
" let g:ale_lint_on_enter = 1
" let g:ale_lint_on_save = 1
" let g:ale_linters = {'go': ['govet', 'golint']}
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 0
" let g:ale_open_list = 0
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
" let g:ale_keep_list_window_open = 0
" Enable integration with airline.
" let g:airline#extensions#ale#enabled = 1


"
" Language: Go
" Tagbar configuration for Golang
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" let g:deoplete#enable_at_startup = 0
" let b:deoplete_disable_auto_complete = 1
" let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" autocmd FileType go  let b:deoplete_disable_auto_complete = 0
" autocmd FileType go  :CocDisable
" let g:deoplete#sources#go#pointer = 1
" let g:deoplete#use_vimproc = 0
" let g:deoplete#sources = {}
" let g:deoplete#sources._ = []
" let g:deoplete#file#enable_buffer_path = 1
" let g:deoplete#omni#input_patterns={}
" let g:deoplete#omni#input_patterns.scala='[^. *\t]\.\w*'

" VIM go
let g:go_test_timeout = '300s'

"""""""""""""""""""""""""
""""  Java Complete  """"
"""""""""""""""""""""""""
" autocmd FileType java setlocal omnifunc=javacomplete#Complete

"  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" let g:neosnippet#enable_completed_snippet = 1
" imap <C-k> <Plug>(neosnippet_expand_or_jump)
" smap <C-k> <Plug>(neosnippet_expand_or_jump)
" xmap <C-k> <Plug>(neosnippet_expand_target)
" let g:neosnippet#snippets_directory = ''

let g:python_host_prog = '/usr/local/bin/python2.7'
let g:python3_host_prog = '/usr/local/bin/python3'

"To create a new tab
nnoremap <C-a> :tabnew<CR>
inoremap <C-a> <Esc>:tabnew<CR>

set splitbelow
let g:path_change_cmd = ""
" nnoremap <C-e> :let g:path_change_cmd = 'cd ' . getcwd()<CR>:cd %:p:h<CR>:split<BAR>resize 15<BAR>term fish<CR>:execute path_change_cmd<CR>
" inoremap <C-e> :let g:path_change_cmd = 'cd ' . getcwd()<CR>:cd %:p:h<CR>:split<BAR>resize 15<BAR>term fish<CR>:execute path_change_cmd<CR>
nnoremap <silent> <C-e> :split<BAR>resize 15<BAR>term fish<CR>
nnoremap <silent> <C-e> :split<BAR>resize 15<BAR>term fish<CR>
tnoremap <Esc> <C-\><C-n>
" autocmd BufWinEnter,WinEnter term://* startinsert
" autocmd TermOpen term://* startinsert
" autocmd TermEnter term://* startinsert
" autocmd BufEnter term://* startinsert

let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_max_signs = 500 


highlight CursorLine gui=underline

function! Multiple_cursors_before()
    " let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
    " let b:deoplete_disable_auto_complete = 0
endfunction

nmap <F2> :NERDTreeToggle<CR>

" au VimEnter *  NERDTree
" autocmd BufWinEnter * NERDTreeMirror
" autocmd VimEnter * wincmd w

let g:nerdtree_sync_cursorline = 1

let g:NERDTreeIndicatorMapCustom = {
     \ 'Modified'  : '✹',
     \ 'Staged'    : '✚',
     \ 'Untracked' : '?',
     \ 'Renamed'   : '➜',
     \ 'Unmerged'  : '═',
     \ 'Deleted'   : '✖',
     \ 'Dirty'     : '✗',
     \ 'Clean'     : '✔︎',
     \ 'Ignored'   : '☒',
     \ 'Unknown'   : '⁇'
     \ }

let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▼'
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

 highlight! NERDTreeOpenable ctermfg=132 guifg=#B05E87
 highlight! def link NERDTreeClosable NERDTreeOpenable

 highlight! NERDTreeFile ctermfg=246 guifg=#999999
 highlight! NERDTreeExecFile ctermfg=246 guifg=#999999

 highlight! clear NERDTreeFlags
 highlight! NERDTreeFlags ctermfg=234 guifg=#1d1f21
 highlight! NERDTreeCWD ctermfg=240 guifg=#777777

 highlight! NERDTreeGitStatusModified ctermfg=1 guifg=#D370A3
 highlight! NERDTreeGitStatusStaged ctermfg=10 guifg=#A3D572
 highlight! NERDTreeGitStatusUntracked ctermfg=12 guifg=#98CBFE
 highlight! def link NERDTreeGitStatusRenamed Title
 highlight! def link NERDTreeGitStatusUnmerged Label
 highlight! def link NERDTreeGitStatusDirDirty Constant
 highlight! def link NERDTreeGitStatusDirClean DiffAdd
 highlight! def link NERDTreeGitStatusUnknown Comment

 function! s:NERDTreeHighlight()
         for l:name in keys(g:NERDTreeIndicatorMapCustom)
                 let l:icon = g:NERDTreeIndicatorMapCustom[l:name]
                 if empty(l:icon)
                         continue
                 endif
                 let l:prefix = index(['Dirty', 'Clean'], l:name) > -1 ? 'Dir' : ''
                 let l:hiname = escape('NERDTreeGitStatus'.l:prefix.l:name, '~')
                 execute 'syntax match '.l:hiname.' #'.l:icon.'# containedin=NERDTreeFlags'
         endfor

         syntax match hideBracketsInNerdTree "\]" contained conceal containedin=NERDTreeFlags
         syntax match hideBracketsInNerdTree "\[" contained conceal containedin=NERDTreeFlags
 endfunction
augroup nerdtree-highlights
         autocmd!
         autocmd FileType nerdtree call s:NERDTreeHighlight()
augroup END

" nmap <leader>P <Plug>yankstack_substitute_older_paste
" nmap <leader>p <Plug>yankstack_substitute_newer_paste

filetype plugin indent on
syntax on

" tnoremap <ESC> <C-\><C-n>

" <Leader>f{char} to move to {char}

" map <Leader> <Plug>(easymotion-prefix)
" map <Leader>f <Plug>(easymotion-bd-f)
" map <Leader>s <Plug>(easymotion-overwin-f)

" map <Leader> <Plug>(easymotion-prefix)
" map <Leader>l <Plug>(easymotion-lineforward)
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
" map <Leader>h <Plug>(easymotion-linebackward)
" nmap s <Plug>(easymotion-overwin-f2)
nmap s <Plug>(easymotion-overwin-f)
nmap <Leader>w <Plug>(easymotion-overwin-w)
nmap <Leader>l <Plug>(easymotion-sl)
let g:EasyMotion_startofline = 0

" Move to line
"map <Leader>l <Plug>(easymotion-bd-jk)
"nmap <Leader>l <Plug>(easymotion-overwin-line)
"
" Move to word
" nmap <Leader>w <Plug>(easymotion-overwin-w)

" nmap z/ <Plug>(incsearch-fuzzy-/)
" nmap z? <Plug>(incsearch-fuzzy-?)
" nmap zg/ <Plug>(incsearch-fuzzy-stay)

nnoremap <c-s> :w!<CR>
inoremap <c-s> <Esc>:wa!<CR>a

nnoremap <c-q> :q!<CR>
inoremap <c-q> <Esc>:q!<CR>a

" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)


" let g:echodoc#enable_at_startup = 1
set cmdheight=2

autocmd FileType qf wincmd J

nnoremap <leader>q :cclose<CR>
" let g:go_list_type = "quickfix"
autocmd FileType go nmap <leader>t  <Plug>(go-test-func)
" let g:go_guru_scope = ["..."]
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'vsplit')
" set completeopt-=preview

" set completeopt=menu,menuone,noselect

highlight GitGutterAdd    guifg=#009900 guibg=<X> ctermfg=2
highlight GitGutterChange guifg=#bbbb00 guibg=<X> ctermfg=3
highlight GitGutterDelete guifg=#ff2222 guibg=<X> ctermfg=1


autocmd FileType go nmap <silent> <Leader>] <Plug>(go-def-tab)
set tags=./.tags,.tags,./tags,tags

" autocmd BufWritePost *.scala silent :EnTypeCheck
"
set noshowmode

" nnoremap <silent> <space>y  :CocList yank<cr>
" " Or, you could use neovim's floating text feature.
" let g:echodoc#enable_at_startup = 1
" let g:echodoc#type = 'floating'
" " To use a custom highlight for the float window,
" " change Pmenu to your highlight group
" highlight link EchoDocFloat Pmenu

" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=10
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
" nmap <silent> [n <Plug>(coc-diagnostic-prev)
" nmap <silent> ]n <Plug>(coc-diagnostic-next)

" Remap keys for gotos
"nmap <silent> gd :call CocAction('jumpDefinition')<CR>
""<Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
" nnoremap <silent> U :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction

" use <tab> for trigger completion and navigate to the next complete item
let g:UltiSnipsExpandTrigger = '<C-y>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsRemoveSelectModeMappings = 0
" let g:UltiSnipsSnippetDirectories=["/Users/senthil/.config/nvim/plugged/vim-go/gosnippets/UltiSnips"]

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" let g:coc_snippet_next = '<tab>'

" inoremap <silent><expr> <cr>
"         \ pumvisible() ? coc#_select_confirm() :
"         \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" inoremap <silent><expr> <Tab>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<Tab>" :
"       \ coc#refresh()

" inoremap <silent><expr> <S-Tab>
"       \ pumvisible() ? "\<C-p>" :
"       \ <SID>check_back_space() ? "\<S-Tab>" :
"       \ coc#refresh()

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" let g:coc_snippet_next = '<tab>'

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
" nmap <leader>rn <Plug>(coc-rename)

" " Remap for format selected region
" vmap <leader>fs  <Plug>(coc-format-selected)
" nmap <leader>fs  <Plug>(coc-format-selected)
" " Show all diagnostics
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" nnoremap <silent> <space>i :call CocAction('runCommand', 'editor.action.organizeImport')<CR>
" let g:coc_enable_locationlist = 1

" au BufRead,BufNewFile *.sbt set filetype=scala

" Smart way to move between panes
noremap <up> <C-w><up>
noremap <down> <C-w><down>
noremap <left> <C-w><left>
noremap <right> <C-w><right>
noremap <C-w>m :NERDTreeClose<CR><C-w>_<C-w>\|

" autocmd BufEnter * silent! :lcd%:p:h

hi TabLine      ctermfg=Black  ctermbg=White    cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=White    cterm=NONE
hi TabLineSel   ctermfg=DarkRed  ctermbg=White  cterm=NONE

let g:far#enable_undo=1

let g:startify_update_oldfiles = 1
let g:startify_relative_path   = 1
let g:startify_fortune_use_unicode = 1
let g:startify_files_number = 7
let g:startify_lists = [
\ {'type': 'files',     'header': ['    🕘  Recent']              },
\ {'type': 'dir',       'header': ['    🕘  Recent in '. getcwd()]},
\ {'type': 'bookmarks', 'header': ['    🔖  Bookmarks']           },
\ {'type': 'commands',  'header': ['    🔧  Commands']            }
\ ]

let g:startify_bookmarks = [
\ {'n': '~/.config/nvim/init.vim'   },
\ {'f': '~/.config/fish/config.fish'}
\ ]

let g:startify_commands = [
\ {'t': ['Open Terminal',  'term']                       },
\ {'u': ['Update plugins', 'te ~/.config/nvim/update.sh']},
\ ]

nnoremap - ddp
nnoremap _ ddkP
inoremap jk <esc>

nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>es :vsplit /Users/senthil/.config/nvim/plugged/vim-go/gosnippets/UltiSnips/go.snippets<CR>

iabbrev gsgn Signed-off-by: senthil <cendhu@gmail.com>

nnoremap yl v$hy
hi CursorLine cterm=underline,bold term=underline
hi LineNr ctermfg=grey
nnoremap <silent> <leader>c :noh<CR>
map <leader>tc :tabclose<cr>
inoremap <C-e> <Esc>A

" vnoremap $1 <esc>`>a)<esc>`<i(<esc>
" vnoremap $2 <esc>`>a]<esc>`<i[<esc>
" vnoremap $3 <esc>`>a}<esc>`<i{<esc>
" vnoremap $$ <esc>`>a"<esc>`<i"<esc>
" vnoremap $q <esc>`>a'<esc>`<i'<esc>
" vnoremap $e <esc>`>a`<esc>`<i`<esc>

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
