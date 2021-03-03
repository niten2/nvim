let mapleader = ","

map <F2> :noh
map <F2> :set hlsearch!<CR>
map <F3> :qall!<CR>
map <F5> o<ESC>k
map <F6> O<ESC>j
map <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
map <F7> :ALEToggle <cr>
map <F9> :PluginInstall<cr>

" russian
imap <C-L> <C-^>

nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

noremap  <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

map <C-A> ggVG

nmap <leader>l :set list!<CR>
nnoremap <leader>fef :normal! gg=G``<CR>

nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
nmap <silent> // :nohlsearch<CR>
noremap ,hl :set hlsearch! hlsearch?<CR>
cmap w!! %!sudo tee > /dev/null %
vmap <Leader>y :w! ~/.vbuf<CR>
nmap <Leader>y :.w! ~/.vbuf<CR>
nmap <Leader>p :r ~/.vbuf<CR>
vmap < <gv
vmap > >gv
" imap <Tab> <C-N>
" imap <S-Tab> <C-P>
map qq :q<CR>

map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" NOTE close buffers
nmap <C-`> :bd<cr>
vmap <C-`> <esc>:bd<cr>v
imap <C-`> <esc>:bd<cr>i

" tabs
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

nnoremap mh  :tabm 0<Space><CR>
nnoremap ml  :tabm <Space><CR>

" easymotion
nmap s <Plug>(easymotion-s2)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" edit motion
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" buf
nnoremap ,b :BufExplorer<CR>


" search shougo/deoplete.nvim
nnoremap ,a :Ack<space>

" asheq/close-buffers.vim
map qn :CloseHiddenBuffers!<CR>

" NOTE remove spaces
nnoremap ,c :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" nnoremap ,c :let @* = expand("%:p").":".line('.')<cr>

nnoremap ,s ]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg]szg

let @t="]szg"
let @c="vepyiw"

let @g="\^T\^Ntm0\^M\^L"
" let @g="^Ttm0^M^N^L"

nnoremap ,g ciw""<Esc>P
nnoremap ,r :e!<CR>
vmap ,t '<,'>sort<CR>

map ,o :'<,'>OpenGithubFile<CR>
map ,d :'<,'>sort<CR>
map ,p vepyiw

map cp :CtrlPTag<CR>

map gn :bn<CR>
map gp :bp<CR>
map gd :bd<CR>

" NERDTree
map <Leader>f :NERDTreeFind<cr>
nmap <C-\> :NERDTreeFind<CR>
map  <C-n> :NERDTreeToggle<CR>

" map <A-1> :NERDTree ~/_link<CR>
" map <A-2> :NERDTree ~/_link/chat-back-end/chat-back-end<CR>
" map <A-3> :NERDTree ~/_link/dotfiles/gist/<CR>
" map <A-4> :NERDTree ~/_link/dotfiles/configs/nvim<CR>
