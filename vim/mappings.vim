""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
noremap j gk
noremap k gj

" Make Ctrl-backspace and Ctrl-delete work
inoremap <C-H> <C-w>
inoremap <ESC>[3;5~ <ESC><Right>dwi

nnoremap <C-H> i<C-w><Esc>
nnoremap <ESC>[3;5~ dw

" Fix the End and Home keys
map <ESC>OF $
map <ESC>OH ^

imap <ESC>OF <ESC>$a
imap <ESC>OH <ESC>^i

map! <ESC>[1;5A <C-Up>
map! <ESC>[1;5B <C-Down>
map! <ESC>[1;5C <C-Right>
map! <ESC>[1;5D <C-Left>

map <ESC>[1;5A <C-Up>
map <ESC>[1;5B <C-Down>
map <ESC>[1;5C <C-Right>
map <ESC>[1;5D <C-Left>
map <ESC>[15;5~ <C-F5>

" Fix my arrow keys
" map! <ESC>[A <C-Up>
" map! <ESC>[B <C-Down>
" map <ESC>[A <C-Up>
" map <ESC>[B <C-Down>
" map! <ESC>[C <C-Right>
" map! <ESC>[D <C-Left>
" map <ESC>[C <C-Right>
" map <ESC>[D <C-Left>


noremap <C-Up> 5-
noremap <C-Down> 5+
inoremap <C-Up> <ESC>5-a
inoremap <C-Down> <ESC>5+a

noremap <C-Left> b
inoremap <C-Left> <Esc>bi
noremap <C-Right> w
inoremap <C-Right> <Esc><Right>wi


" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" nnoremap <space> /
" nnoremap <c-space> ?

" Disable spellcheck when <leader><cr> is pressed
nnoremap <silent> <leader><cr> :set nospell<cr>
" Disable highlight when <leader><cr> is pressed
nnoremap <silent> <leader><leader><cr> :noh<cr>

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Close the current buffer
nnoremap <leader>bd :Bclose<cr>

" Close all the buffers
nnoremap <leader>ba :1,1000 bd!<cr>

" Close the quickfix window
nnoremap <C-Q> :cclose<Cr>

" Useful mappings for managing tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove

" Move tab left or right"
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<Cr>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<Cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nnoremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

"Map <Cr> in normal mode to insert a line
nnoremap <Cr> o<Esc>

" Ctrl-o takes you to where your cursor was previously in the movement stack.
" Leader + Ctrl-o now inverts that.
nnoremap <leader><C-o> <C-I>

" Arbitrarily, I have chosen z as my register to store shit in
nnoremap <A-z> :let @z=expand("<cword>")<CR>
" Ctrl + ] - open definition
" Ctrl + W, Ctrl + ] - open definition in horizontal split
" Ctrl + t - jump back
" Ctrl + o - up one level
" Ctrl + i - down one level
nnoremap <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" Explanation - Copy the current word into the register `z`, then open the
" current buffer into a new tab, then jump to the tag stored in `z` -- the
" word we were highlighted over. AKA Open the current word's definition in a
" new tab!
nmap <C-]> <A-z>: tabe <C-r>%<CR>: tag <C-r>z<CR>
" nnoremap <C-[> :e <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <Leader><C-\> :exec("tag ".expand("<cword>"))<CR>
" nnoremap <A-LeftMouse> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" nnoremap <A-RightMouse> :sp <CR>:exec("tag ".expand("<cword>"))<CR>
" nnoremap <Leader>; :call CurtineIncSw()<CR>
" nnoremap <Leader><Leader>; :vsp <CR>:call CurtineIncSw()<CR>
nnoremap <Leader>; :A<CR>
nnoremap <Leader><Leader>; :AV<CR>

" Press Alt+u to convert current word to uppercase
inoremap <A-u> <Esc>viwUi
" Press Alt+l to convert current word to lowercase
inoremap <A-l> <Esc>viwui
nnoremap <A-u> viwU
nnoremap <A-l> viwu

nmap <C-_> <A-z>:tabe<CR>:Grep <C-r>z<CR>

" OUTDATED(now in plugins as Autoformat): Remove all trailing whitespace by pressing F5 
" nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Quickly open VIMRC in a vertical split
nnoremap <leader>ev :tabe $MYVIMRC<Cr>

" Quickly source VIMRC to apply settings
nnoremap <leader>sv :source $MYVIMRC<Cr>

" Search and replace the previous word with the word last searched for
inoremap <A-r> <Esc>mzyiw:%s//\=@0/g<Cr>`za
nnoremap <A-r> mzyiw:%s//\=@0/g<Cr>`z

" if os != "windows"
"   source ~/.vim/marvim/marvim.vim
"   let marvim_store='~/.vim/marvim'
" endif

" TODO(bhollaway): what was this for?...
" map <Leader>p :exec("!xdg-open /tmp/".expand('%:r').".pdf")<CR>

nnoremap <Tab> :tabn<Cr>
nnoremap <S-Tab> :tabp<Cr>

" Quick write session with F6
map <F6> :mksession! ~/.vim/sessions/last.session <cr>

" And load session with F7
map <F7> :source ~/.vim/sessions/last.session <cr>

"(typing "#i" and space will be expanded to "#include")
iabbrev #i #include
" (typing "#d" and space will be expanded to "#define")
iabbrev #d #define
iabbrev todo TODO(bhollaway):
iabbrev TODO TODO(bhollaway):

function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr "no output"
  else
    " use "new" instead of "tabnew" below if you prefer split windows instead of tabs
    tabnew
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)

function! MakeHTML()
    colorscheme summerfruit256
    set nonumber norelativenumber
    execute "TOhtml"
    execute "w"
    silent execute "!xdg-open " . expand('%:p')
    execute "q"
    set number relativenumber
    colorscheme molokai
endfunction
command! -nargs=? -complete=command MakeHTML call MakeHTML()

function! ReloadBuffers()
    execute "tabdo exec 'windo e'"
endfunction
command! -nargs=? -complete=command ReloadBuffers call ReloadBuffers()

function! ResizeBuffers()
    execute "tabdo exec 'wincmd ='"
endfunction
command! -nargs=? -complete=command ResizeBuffers call ResizeBuffers()

function! Fix()
    execute "YcmCompleter FixIt"
endfunction
command! -nargs=? -complete=command Fix call Fix()

" Renumbers the id fields of structs in an FSM
function! RenumberBy(offset) range
    '<,'>s/\(id *= *\)\(\d\+\)/\=printf("%s%d", submatch(1), str2nr(submatch(2)) + a:offset)
endfunction

function! GetPath()
    call setreg("+", expand('%:p'))
endfunction
command! -nargs=? -complete=command GetPath call GetPath()

command! -nargs=+ GrepDir execute 'silent! grep <args> ' | copen 42 | redraw!

nnoremap <space> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
