" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" vimrc by Nick Camillo
" http://dev.nickcamillo.com/portfolio
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " map leader to Space
    let mapleader = "\<Space>"

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Vim Plug Package Manager
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  call plug#begin('~/.vim/plugged')

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Display/Defaults Plugins
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Plug 'vim-scripts/L9'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'itchyny/lightline.vim'


" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Navigation Plugs
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Plug 'jeetsukumaran/vim-buffergator'
  Plug 'scrooloose/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  "Plug 'myusuf3/numbers.vim'
  Plug 'ludovicchabant/vim-gutentags'

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Search Plugs
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  "Plug 'kien/ctrlp.vim'
  Plug 'mileszs/ack.vim'

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Syntax/Language Plugs
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise'
  "Plug 'jelera/vim-javascript-syntax'
  "Plug 'othree/yajs.vim'
  "Plug 'elzr/vim-json'
  Plug 'pangloss/vim-javascript'
  "Plug 'kchmck/vim-coffee-script'
  "Plug 'nikvdp/ejs-syntax'
  "Plug 'mustache/vim-mustache-handlebars'
  "Plug 'leafgarland/typescript-vim'
  "Plug 'othree/javascript-libraries-syntax.vim'
  "Plug 'maxmellon/vim-jsx-pretty'
  Plug 'chemzqm/vim-jsx-improve'
  "Plug 'mxw/vim-jsx'
  Plug 'w0rp/ale'
  "Plug 'slim-template/vim-slim.git'
  Plug 'fatih/vim-go'
  Plug 'chr4/nginx.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'posva/vim-vue'
  Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'ruby'] }

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Utility Plugs
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Plug 'scrooloose/nerdcommenter'
  Plug 'vim-scripts/DeleteTrailingWhitespace'
  Plug 'janko-m/vim-test'


" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Writing Plugs
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Plug 'junegunn/goyo.vim'
  Plug 'reedes/vim-pencil'
  Plug 'plasticboy/vim-markdown'
  Plug 'mzlogin/vim-markdown-toc'
  Plug 'reedes/vim-litecorrect'
  Plug 'dhruvasagar/vim-table-mode'

  call plug#end()
  filetype plugin indent on

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Behavior
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  set nocompatible             " put this here just in case
  set autoindent               " indent automatically
  set smartindent              " try to indent intelligently
  set tabstop=2                " 1 tab = 2 columns
  set softtabstop=2            " indent intead of insert tab
  set shiftwidth=2             " 1 indent = 2 columns
  set expandtab                " insert spaces instead of tabs
  "set smarttab                 " tab to next indentation at beginning of line
  "set ignorecase               " ignore case in / searches
  set smartcase                " don't ignore uppercase letters
  set showcmd                  " show commands you are typing
  set incsearch                " search as you type
  set scrolloff=8              " start ver scrolling 8 lines from margins
  set sidescrolloff=15         " start hoz scrolling 15 spaces from margin
  set sidescroll=1             " allow hoz scrolling
  " set noswapfile
  set foldmethod=manual        " fold based on indentation
  " set foldlevel=1              " for anything indented more than 1 level
  " set foldclose=all            " auto-close fold after navigating out of fold

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Presentation
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  set t_Co=256                 " Allow vim to display in 256 colors
  set background=dark
  colorscheme pan              " Use 'the best' color scheme
  syntax on                    " Allow Syntax Highlighting
  set ruler                    " Indicate current position in statusline
  set number                   " Indicate row numbers
  "set cursorline               " Indicate current row of cursor SLOW
  "hi CursorLineNr term=bold cterm=bold ctermfg=2 guifg=Grey guibg=Grey90
  set fillchars=""             " Fill splits with spaces
  set hlsearch                 " Highligh search Text
  set laststatus=2             " Always Show Status Bar
  set listchars=trail:*,tab:▸\  " Display Spaces / Tabs
  set list                     " Required for listchars to work
  set lazyredraw
  "match Error /\%>80v.\+/      " Highlight characters past 80
  "hi Error ctermfg=Black guifg=Black ctermbg=Red guibg=Red

  " format statusline
  set statusline=%<%F\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Leader Functions
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " [leader ev] edit .vimrc
  nnoremap <leader>ev :vsplit $MYVIMRC<cr>

  " [leader sv] source .vimrc
  nnoremap <leader>sv :source $MYVIMRC<cr>

  " [leader d] delete trailing white space
  nnoremap <Leader>d :DeleteTrailingWhitespace<CR>

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Control Functions
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " [ctrl p] start fzf
  autocmd VimEnter * nnoremap <C-p> :Files<CR>
  " [ctrl t] toggle NerdTree
  autocmd VimEnter * nnoremap <leader>t :NERDTreeToggle<CR>
  autocmd VimEnter * nnoremap <C-t> :NERDTreeToggle<CR>

  " [ctrl h/j] switch between/maximize panes
  nnoremap <leader>j <C-W>j<C-W>_
  nnoremap <leader>k <C-W>k<C-W>_

  " [ctrl +/-] increase/decrease height of panes
  nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
  nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

  " [ctrl f] recursively search files
  nnoremap <C-f> :Ack! -R "

  " Run nearest test
  nnoremap <leader>R :TestNearest<CR>
  " Run whole test file
  nnoremap <leader>r :TestFile<CR>
  " Run last test
  nnoremap <leader>l :TestLast<CR>

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Utility Aliases
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " [return] dehighlight last search term
  nnoremap <CR> :noh<CR><CR>

  " [-/_] move lines up and down
  noremap - ddp
  noremap _ ddkkp

  " [>/<] indent and unindent
  nnoremap > >>
  nnoremap < <<

  " [F] grep word under cursor
  nnoremap F :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" FZF
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
let g:fzf_layout = { 'down': '~25%' }
let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

" use ag to use gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" NERDTree
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  let g:NERDTreeNodeDelimiter = "\u00a0"

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Go-Vim
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  let g:go_def_mapping_enabled = 0
  let g:go_def_mode = 'godef'
  let g:go_version_warning = 0
  "let g:go_fmt_command = "goimports"

  au FileType go nmap <leader>g <Plug>(go-def)
  au FileType go nmap <leader>I <Plug>(go-imports)
  augroup twig_ft
    au!
    autocmd BufNewFile,BufRead *.ego   set syntax=html
  augroup END

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Ale
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  let g:ale_fixers = {
        \   'javascript': ['prettier'],
        \   'ruby': ['prettier'],
        \   'go': ['gofmt'],
        \   'html': ['prettier'],
        \}

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Vue Syntax Highlighting
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  autocmd FileType vue syntax sync fromstart

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Git Gutter
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  set updatetime=250
  let g:gitgutter_sign_removed = '-'
  let g:gitgutter_sign_modified = '~'
  let g:gitgutter_sign_added = '+'

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Statusline
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component': {
        \   'readonly': '%{&readonly?"⭤":""}',
        \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
        \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
        \ },
        \ 'component_visible_condition': {
        \   'readonly': '(&filetype!="help"&& &readonly)',
        \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
        \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
        \ },
        \ 'component_function': {
        \ 'filename': 'LightlineFilename',
        \ },
        \ 'separator': { 'left': '', 'right': '' },
        \ 'subseparator': { 'left': '|', 'right': '|' }
        \ }

  function! LightlineFilename()
    let root = fnamemodify(get(b:, 'git_dir'), ':h')
    let path = expand('%:p')
    if path[:len(root)-1] ==# root
      return path[len(root)+1:]
    endif
    return expand('%')
  endfunction

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Ack Searching
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  let g:ackprg = 'ag --nogroup --nocolor --column'

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" The Silver Searcher
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor
  endif

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Writing Modes
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " only open markdown files in Goyo
  function! s:auto_goyo()
    if &ft == 'markdown'
      Goyo 80
    elseif exists('#goyo')
      let bufnr = bufnr('%')
      Goyo!
      execute 'b '.bufnr
    endif
  endfunction

  " automatically open Goyo when opening markdown files
  augroup goyo_markdown
    autocmd!
    autocmd BufNewFile,BufRead * call s:auto_goyo()
  augroup END

  " o to start new line indented by 2 spaces
  let g:vim_markdown_new_list_item_indent = 2

  " format JSON
  let g:vim_markdown_json_frontmatter = 1

  " fold markdown files
  let g:vim_markdown_folding_disabled = 0

  if has("autocmd")
    filetype plugin indent on
  endif

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" TMUX Settings
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " use proper cursors in tmux
  if exists('$ITERM_PROFILE')
    if exists('$TMUX')
      let &t_SI = "\<Esc>[3 q"
      let &t_EI = "\<Esc>[0 q"
    else
      let &t_SI = "\<Esc>]50;CursorShape=1\x7"
      let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
  endif

