nnoremap <Up>          :echom "--> k <-- "<CR>
nnoremap <Down>        :echom "--> j <-- "<CR>
nnoremap <Right> gt
nnoremap <Left>  gT

inoremap <Up>     <C-o>:echom "--> k <-- "<CR>
inoremap <Down>   <C-o>:echom "--> j <-- "<CR>
inoremap <Right>  <C-o>:echom "--> l <-- "<CR>
inoremap <Left>   <C-o>:echom "--> h <-- "<CR>

" Set kj to be escape in insert mode
inoremap kj <esc>

" For long, wrapped lines
nnoremap k gk
" For long, wrapped lines
nnoremap j gj

" For moving quickly up and down,
nnoremap gj /\%<C-R>=virtcol(".")<CR>v\S<CR>:nohl<CR>
" Thanks to: http://vi.stackexchange.com/a/213
nnoremap gk ?\%<C-R>=virtcol(".")<CR>v\S<CR>:nohl<CR>

" Map execute this line
nnoremap <leader>x :exe getline(".")<CR>
" Execute this file
vnoremap <leader>x :<C-w>exe join(getline("'<","'>"),'<Bar>')<CR>
nnoremap <leader><leader>x :w<CR>:source %<CR>
nnoremap <leader><leader>v :Vader %<CR>

" Remove whitespace
nnoremap <leader>sws :%s/\s\+$//<CR>

" Easier Moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make windows to be basically the same size
nnoremap <leader>= <C-w>=

" Sizing window horizontally
nnoremap <c-,> <C-W><
nnoremap <c-.> <C-W>>
nnoremap <A-,> <C-W>5<
nnoremap <A-.> <C-W>5>

" Sizing window vertically
" taller
nnoremap <A-t> <C-W>+
" shorter
nnoremap <A-s> <C-W>-

" Move easily to the next error
nnoremap <leader>l :lnext<CR>
nnoremap <leader>h :lprevious<CR>

" Fun C to write the result of a command at the end of the function
" function signature
nnoremap <leader>fs ^yt{$%"_ddI} /* <esc>pa*/<CR><esc>

" Get autoload names easily
inoremap <leader>au <c-O>:call tj#easy_autoload()<CR><esc>A

" Undo toggle
nnoremap <leader>ut :GundoToggle<cr>

" Random number into vim
inoremap <leader>nr <c-o>:py import vim, random; vim.current.line += str(random.randint(0,9))<CR><esc>A

" Helpful delete/change into blackhole buffer
nmap <leader>d "bd
nmap <leader>c "bc

" Change the working directory for everybody
nnoremap <leader>cd :windo lcd 

if has('nvim')
    " Make esc leave terminal mode
    tnoremap <Esc> <C-\><C-n>
    tnoremap kj <C-\><C-n>

    " Easy moving between the buffers
    tnoremap <A-h> <C-\><C-n><C-w>h
    tnoremap <A-j> <C-\><C-n><C-w>j
    tnoremap <A-k> <C-\><C-n><C-w>k
    tnoremap <A-l> <C-\><C-n><C-w>l
    nnoremap <A-h> <C-w>h
    nnoremap <A-j> <C-w>j
    nnoremap <A-k> <C-w>k
    nnoremap <A-l> <C-w>l

    " Try and make sure to not mangle space items
    tnoremap <S-Space> <Space>
    tnoremap <C-Space> <Space>
endif

" Clear highlighting easily
" Show matching highlights, but erase them if I press enter
if &hlsearch
  let s:magical_searching = v:false

  let g:_is_highlighted = v:true
  function! DoNoHL() abort
    if g:_is_highlighted && &hlsearch
      let g:_is_highlighted = v:false
      return ":nohl\<CR>"
    else
      return "\<CR>"
    endif
  endfunction

  let s:search_chars = [
        \ '/',
        \ '?',
        \ '*',
        \ '#',
        \ ]

  let s:repeat_chars = [
        \ 'n',
        \ 'N',
        \ ]

  if s:magical_searching
    let s:append_search = '\v'
  else
    let s:append_search = ''
  endif

  for s:current_char in s:search_chars
    execute('nnoremap ' . s:current_char . ' :let g:_is_highlighted=v:true<CR>' . s:current_char . s:append_search)
  endfor

  for s:repeat_char in s:repeat_chars
    execute('nnoremap ' . s:repeat_char . ' :let g:_is_highlighted=v:true<CR>' . s:repeat_char)
  endfor

  nnoremap <expr> <CR> DoNoHL()
endif

" List occurences from this file
nnoremap <leader>sf :call tj#list_occurrences()<CR>
" List occurences from a custom file
nnoremap <leader>scf :call tj#list_occurrences(input('Search regex: '))<CR>
