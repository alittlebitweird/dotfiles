" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" vimrc by Nick Camillo
" http://dev.nickcamillo.com/portfolio
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " map leader to Space
    let mapleader = "\<Space>"

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Vundle Package Manager
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  Plugin 'gmarik/Vundle.vim'

  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " Display/Defaults Plugins
  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Plugin 'L9'
    Plugin 'tpope/vim-sensible'
    Plugin 'tpope/vim-fugitive'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'itchyny/lightline.vim'

  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " Navigation Plugins
  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Plugin 'jeetsukumaran/vim-buffergator'
    Plugin 'scrooloose/nerdtree'
    Plugin 'christoomey/vim-tmux-navigator'

  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " Search Plugins
  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Plugin 'FuzzyFinder'
    Plugin 'kien/ctrlp.vim'
    Plugin 'mileszs/ack.vim'

  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " Syntax/Language Plugins
  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Plugin 'tpope/vim-rails.git'
    Plugin 'tpope/vim-endwise'
    "Plugin 'jelera/vim-javascript-syntax'
    "Plugin 'othree/yajs.vim'
    Plugin 'elzr/vim-json'
    Plugin 'pangloss/vim-javascript'
    Plugin 'kchmck/vim-coffee-script'
    "Plugin 'nikvdp/ejs-syntax'
    Plugin 'mxw/vim-jsx'
    Plugin 'mustache/vim-mustache-handlebars'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'othree/javascript-libraries-syntax.vim'
    Plugin 'w0rp/ale'
    Plugin 'slim-template/vim-slim.git'

  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " Utility Plugins
  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'vim-scripts/DeleteTrailingWhitespace'

  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  " Writing Plugins
  " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Plugin 'junegunn/goyo.vim'
    Plugin 'reedes/vim-pencil'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'mzlogin/vim-markdown-toc'
    Plugin 'reedes/vim-litecorrect'
    Plugin 'dhruvasagar/vim-table-mode'

  call vundle#end()
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

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Presentation
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  set t_Co=256                 " Allow vim to display in 256 colors
  colorscheme wombat256mod     " Use 'the best' color scheme
  syntax on                    " Allow Syntax Highlighting
  set ruler                    " Indicate current position in statusline
  set number                   " Indicate row numbers
  "set cursorline               " Indicate current row of cursor SLOW
  "hi CursorLineNr term=bold cterm=bold ctermfg=2 guifg=Grey guibg=Grey90
  set fillchars=""             " Fill splits with spaces
  set hlsearch                 " Highligh search Text
  set laststatus=2             " Always Show Status Bar
  set listchars=trail:*,tab:-> " Display Spaces / Tabs
  set list                     " Required for listchars to work
  set lazyredraw
  "match Error /\%>80v.\+/      " Highlight characters past 80
  "hi Error ctermfg=Black guifg=Black ctermbg=Red guibg=Red

  " format statusline
  set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

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
  " [ctrl t] toggle NerdTree
  nnoremap <C-t> :NERDTreeToggle<CR>

  " [ctrl h/j] switch between/maximize panes
  nnoremap <leader>j <C-W>j<C-W>_
  nnoremap <leader>k <C-W>k<C-W>_

  " [ctrl +/-] increase/decrease height of panes
  nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
  nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

  " [ctrl f] recursively search files
  nnoremap <C-f> :Ack!

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

  " [K] grep word under cursor
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Ale
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  let g:ale_fixers = {
        \   'javascript': ['eslint'],
        \   'ruby': ['rubocop'],
        \}

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Git Gutter
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  set updatetime=250
  let g:gitgutter_sign_modified = '•'
  let g:gitgutter_sign_added = '❖'
  highlight GitGutterAdd guifg='#A3E28B'

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
        \ 'ctrlpmark': 'CtrlPMark',
        \ },
        \ 'separator': { 'left': '', 'right': '' },
        \ 'subseparator': { 'left': '|', 'right': '|' }
        \ }

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Ctrl P Prettify
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  function! CtrlPMark()
    if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
      call lightline#link('iR'[g:lightline.ctrlp_regex])
      return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
            \ , g:lightline.ctrlp_next], 0)
    else
      return ''
    endif
  endfunction

  function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
    let g:lightline.ctrlp_regex = a:regex
    let g:lightline.ctrlp_prev = a:prev
    let g:lightline.ctrlp_item = a:item
    let g:lightline.ctrlp_next = a:next
    return lightline#statusline(0)
  endfunction

  function! CtrlPStatusFunc_2(str)
    return lightline#statusline(0)
  endfunction

  let g:ctrlp_status_func = {
    \ 'main': 'CtrlPStatusFunc_1',
    \ 'prog': 'CtrlPStatusFunc_2',
    \ }

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

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
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
" Table Mode
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  function! s:isAtStartOfLine(mapping)
    let text_before_cursor = getline('.')[0 : col('.')-1]
    let mapping_pattern = '\V' . escape(a:mapping, '\')
    let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
    return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
  endfunction

  inoreabbrev <expr> <bar><bar>
            \ <SID>isAtStartOfLine('\|\|') ?
            \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
  inoreabbrev <expr> __
            \ <SID>isAtStartOfLine('__') ?
            \ '<c-o>:silent! TableModeDisable<cr>' : '__'

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
