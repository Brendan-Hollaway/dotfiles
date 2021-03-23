"===============================================================================
" vim-plug plugin manager config.

" if has('nvim')
"     Plug 'lervag/vimtex'
" end

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Use single quotes for all arguments to Plug

" Autocomplete
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
Plug 'skywind3000/asyncrun.vim'
Plug 'Shougo/neco-syntax'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Vimjas/vim-python-pep8-indent'

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki

Plug 'mhinz/neovim-remote'

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-syntax'
Plug 'ncm2/ncm2-github'

Plug 'vim-scripts/Align'
Plug 'godlygeek/tabular'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-obsession'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

Plug 'scrooloose/nerdcommenter'
Plug 'kien/rainbow_parentheses.vim'
Plug 'flazz/vim-colorschemes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tmux-plugins/vim-tmux'
Plug 'edkolev/tmuxline.vim'

Plug 'vim-latex/vim-latex'
Plug 'unblevable/quick-scope'

Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'supercrabtree/vim-resurrect'

" Autoformatters
Plug 'rhysd/vim-clang-format'
Plug 'Chiel92/vim-autoformat'

" Fuzzy file finding
Plug 'ctrlpvim/ctrlp.vim'

" Spell check
" Plug 'kamykn/spelunker.vim'

" Plug 'vim-syntastic/syntastic'
" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/vim-easy-align'
"Plug 'junegunn/goyo.vim'

"Plug 'mattn/emmet-vim'
"Plug 'pangloss/vim-javascript'

" Plug 'w0rp/ale'
Plug 'vim-scripts/headerguard'
Plug 'ericcurtin/CurtineIncSw.vim'

" Autocomplete
" Plug 'zxqfl/tabnine-vim'
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }

" (Optional) Multi-entry selection UI.
" Plug 'junegunn/fzf'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" function! BuildYCM(info)
"   " info is a dictionary with 3 fields
"   " - name:   name of the plugin
"   " - status: 'installed', 'updated', or 'unchanged'
"   " - force:  set on PlugInstall! or PlugUpdate!
"   if a:info.status == 'installed' || a:info.force
"     !./install.py --clang-completer
"   endif
" endfunction

"Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

" Initialize plugin system
call plug#end()

" Required for operations modifying multiple buffers like rename.
" set hidden

" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
"     \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
"     \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"     \ 'python': ['/usr/local/bin/pyls'],
"     \ 'cpp': ['/mnt/c/Users/black/workspace/cquery/build/release/bin/cquery', 
"     \         '--log-file=/tmp/cq.log', 
"     \         '--init={"cacheDirectory":"/var/cquery/"}'] 
"     \ }

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" " Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" " Autocomplete
" autocmd BufEnter * call ncm2#enable_for_buffer()
" " Use <TAB> to select the popup menu:
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" " IMPORTANT: :help Ncm2PopupOpen for more information
" set completeopt=noinsert,menuone,noselect

" augroup LanguageClient_config
"   au!
"   au BufEnter * let b:Plugin_LanguageClient_started = 0
"   au User LanguageClientStarted setl signcolumn=yes
"   au User LanguageClientStarted let b:Plugin_LanguageClient_started = 1
"   au User LanguageClientStopped setl signcolumn=auto
"   au User LanguageClientStopped let b:Plugin_LanguageClient_stopped = 0
"   au CursorMoved * if b:Plugin_LanguageClient_started | call LanguageClient_textDocument_hover() | endif
" augroup END

" Brief help
" PlugInstall [name ...] [#threads]   Install plugins
" PlugUpdate [name ...] [#threads]    Install or update plugins
" PlugClean[!]                        Remove unused directories (bang version
"                                     will clean without prompt)
" PlugUpgrade                         Upgrade vim-plug itself
" PlugStatus                          Check the status of plugins
" PlugDiff                            Examine changes from the previous update
"                                     and the pending changes
" PlugSnapshot[!] [output path]       Generate script for restoring the current
"                                     snapshot of the plugins
"-------------------------------------------------------------------------------

"===============================================================================
" netrw - Built in file browser plugin
"===============================================================================
"Don't separate *.h from other files (as is done by default) in Explore
let g:netrw_sort_sequence = "[\/]$,*,\.bak$,\.o$,\.info$,\.swp$,\.obj$"
let g:netrw_list_hide = "\.swp$,\.o$,\.so$"

"-------------------------------------------------------------------------------

"===============================================================================
" octol/vim-cpp-enhanced-highlight options
"===============================================================================
let g:cpp_class_scope_highlight = 1
let g_cpp_experimental_template_highlight = 1
"-------------------------------------------------------------------------------

"===============================================================================
" YouCompleteMe options
"===============================================================================

"let g:ycm_global_ycm_extra_conf = "~/.vim/config/ycm_extra_config.global.py"
"let g:ycm_confirm_extra_conf = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1

"let g:Show_diagnostics_ui = 1 "default 1

""will put icons in Vim's gutter on lines that have a diagnostic set.
""Turning this off will also turn off the YcmErrorLine and YcmWarningLine
""highlighting
"let g:ycm_enable_diagnostic_signs = 1
"let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_always_populate_location_list = 1 "default 0
"let g:ycm_open_loclist_on_ycm_diags = 1 "default 1


"let g:ycm_complete_in_strings = 1 "default 1
"let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
"let g:ycm_path_to_python_interpreter = '' "default ''


"let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
"let g:ycm_server_log_level = 'info' "default info

"" Other options include [ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
"let g:ycm_goto_buffer_command = 'same-buffer' 

"let g:ycm_filetype_whitelist = { '*': 1 }
"let g:ycm_key_invoke_completion = '<C-Space>'

"nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>

"let g:ycm_filetype_blacklist = {
"  \ 'tagbar' : 1,
"  \ 'qf' : 1,
"  \ 'notes' : 1,
"  \ 'markdown' : 1,
"  \ 'unite' : 1,
"  \ 'text' : 1,
"  \ 'vimwiki' : 1,
"  \ 'pandoc' : 1,
"  \ 'infolog' : 1,
"  \ 'mail' : 1
"  \}

"-------------------------------------------------------------------------------

"===============================================================================
" Syntastic options
"===============================================================================

" Jump to errors with ']'/'[' and lowercase 'L'
 let g:syntastic_always_populate_loc_list = 1
" C++
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_checkers=['g++']
"-------------------------------------------------------------------------------

"===============================================================================
" Git gutter settings, too slow, disable.
"===============================================================================
let g:gitgutter_enabled = 0
"let g:gitgutter_signs = 0
"let g:gitgutter_realtime = 0
"let g:gitgutter_eager = 0
"-------------------------------------------------------------------------------

"===============================================================================
" Rainbow Parentheses"
"===============================================================================
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
"-------------------------------------------------------------------------------

" Format the status line, this should be in settings.vim but I don't know how to
" conditionally enable it only when vim-arline hasn't loaded.
" Used in case we don't have powerline
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ [%l,%c]


"===============================================================================
" Tabularize
"===============================================================================
if exists(":Tabularize")
    nnoremap <Leader>a= :Tabularize /=<CR>
    vnoremap <Leader>a= :Tabularize /=<CR>
    nnoremap <Leader>a: :Tabularize /:\zs<CR>
    vnoremap <Leader>a: :Tabularize /:\zs<CR>
endif
"-------------------------------------------------------------------------------

"===============================================================================
" Fonts
"===============================================================================
"if os == "windows"
set guifont=Consolas:h12:cANSI
silent! set guifont=Inconsolata:h12:cANSI
"else
"  silent! set guifont=Monospace\ 10
"endif


"===============================================================================
" Airline
"===============================================================================
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tmuxline#enabled = 0

"===============================================================================
" Tmuxline
"===============================================================================
" default theme
let g:tmuxline_theme = 'zenburn'

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#I',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : '#(uptime | cut -d " " -f 3,4,5)',
      \'y'    : ['%R', '%a', '%b', '%d'],
      \'z'    : ['#(whoami)', '#H']}


"===============================================================================
" ALE
"===============================================================================
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never' "Set to 'never' for moar speed
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 0 " 1
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_list_vertical = 0
let g:ale_c_parse_makefile=1
autocmd BufNewFile,BufRead *.h if !empty(globpath('.', '*.c')) | setlocal ft=c | endif

let g:ale_c_clangtidy_checks = ['*', '-llvm-include-order', '-google-readability-todo']

"===============================================================================
" EASYMOTION
"===============================================================================
let g:EasyMotion_do_mapping = 0 " Disable default mappings
map <Leader> <Plug>(easymotion-prefix)

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"===============================================================================
" VIM-COMMENTARY
"===============================================================================
autocmd FileType matlab setlocal commentstring=\%\ %s
" Comment using // for c++
autocmd FileType c,cpp,cs,java,cfg setlocal commentstring=//\ %s
autocmd FileType ocaml set commentstring=(*\ %s\ *)

"===============================================================================
" VIM-NCM2
"===============================================================================
set completeopt=noinsert,menuone,noselect
" autocmd BufEnter * call ncm2#enable_for_buffer()
" au User Ncm2Plugin call ncm2#register_source({
"         \ 'name' : 'css',
"         \ 'priority': 9,
"         \ 'subscope_enable': 1,
"         \ 'scope': ['css','scss'],
"         \ 'mark': 'css',
"         \ 'word_pattern': '[\w\-]+',
"         \ 'complete_pattern': ':\s*',
"         \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
"         \ })
" " Use <TAB> to select the popup menu:
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Latex specific
autocmd BufWritePost *.tex :AsyncRun pdflatex --output-directory=/tmp *.tex
" if has('nvim')
"     let g:vimtex_compiler_progname = 'nvr'
" end

" Disable folds
let g:Tex_Folding = 0
let g:Tex_DefaultTargetFormat = 'pdf' " doesn't work
let g:Tex_CompileRule_pdf = 1

" runtime plugin/RainbowParenthsis.vim 
"Color Schemes
silent colorscheme molokai
hi Visual term=reverse cterm=reverse

autocmd BufRead,BufNewFile *.launch setfiletype roslaunch

" Use github-flavored markdown for rendering
let vim_markdown_preview_github=1
let vim_markdown_preview_toggle=2

let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips', 'UltiSnips']
let g:UltiSnipsEditSplit="vertical"


"===============================================================================
" AUTO-FORMATTING
"===============================================================================
" Automatically format c-family files with clang
" let g:clang_format#auto_format = 1
" autocmd FileType cpp,c ClangFormatAutoEnable

" Manually format python files with Autoformat
nnoremap <C-F5> :Autoformat<Cr>
nnoremap <F5> :let g:autoformat_verbosemode=1<CR>:Autoformat<CR>:let g:autoformat_verbosemode=0<CR>

" let my_filetypes = ['bzl', 'c', 'cpp', 'go']
let my_filetypes = ['bzl', 'go']
let cpp_filetypes = ['c', 'cpp']
autocmd BufWrite * if index(my_filetypes, &ft) >= 0 | :Autoformat | else | if index(cpp_filetypes, &ft) >= 0 | :ClangFormat
let g:formatterpath = ['/usr/local/bin/']
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
" Bazel
let g:formatters_bzl = ['buildifier']
let g:formatdef_buildifier = '"buildifier -type=build"'
" Go
let g:formatters_go = ['gofmt']
let g:formatdef_gofmt = '"gofmt"'
" Python
let g:formatters_python = ['black']

"===============================================================================
" VIM-RESURRECT
"===============================================================================
let g:resurrect_ignore_patterns = [
    \  '/.git/',
    \  'fugitive://',
    \  '/undotree_2',
    \  '/__CtrlSF__'
    \]


"===============================================================================
" FINDING FILES -- CTRLPVIM/CTRLP.VIM
"===============================================================================
let g:ctrlp_max_files=0
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_cmd='CtrlP /bdi/rt/robots/fleet'
let g:ctrlp_working_path_mode = 'c'
