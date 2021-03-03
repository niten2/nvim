" NOTE autostart
" :tabnew
" :tabnew
" :tabfirst
" autocmd VimEnter * NERDTree

colorscheme dracula

syntax on
filetype off
filetype plugin indent on
filetype plugin on

set nocompatible
set novisualbell

set clipboard=unnamed
set clipboard=unnamedplus

set history=30

set wildmenu
set visualbell
set lazyredraw
set mouse=a

highlight CursorLine ctermbg=red ctermbg=green ctermbg=black

set showcmd
set showmatch showmode
set showmode
set hidden
set nowrap
set hlsearch
set ignorecase
set smartcase
set nobackup
set nowb
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile
set novb
set wrap
set linebreak
set nolist

set tabstop=2
set shiftwidth=2

set smarttab
set expandtab
set autoindent
set smartindent

set t_Co=256

if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

set conceallevel=1
set concealcursor=nvic
set regexpengine=1
set statusline+=%#warningmsg#
set statusline+=%*

set winwidth=84
set winminheight=1
set winheight=999

au BufRead,BufNewFile {Vagrantfile,Gemfile,Capfile} set ft=ruby

" filetype
autocmd BufNewFile,BufRead *.jst.skim set syntax=slim
autocmd BufNewFile,BufRead *.hbs set syntax=handlebars
autocmd BufNewFile,BufRead *.cjsx set syntax=coffee
autocmd BufNewFile,BufRead *.haml set syntax=coffee
autocmd BufNewFile,BufRead .DS_Store set syntax=tags
autocmd BufNewFile,BufRead *.graphql set syntax=coffee
autocmd BufNewFile,BufRead *.tsx set syntax=typescript
autocmd BufNewFile,BufRead * if &syntax == '' | set syntax=sh | endif

" comment
autocmd FileType slim setlocal commentstring=/%s
autocmd FileType *.html.slim setlocal commentstring=/%s
autocmd FileType *.html.haml setlocal commentstring=#%s
autocmd FileType *.conf setlocal commentstring=#%s
autocmd FileType *.txt setlocal commentstring=#%s
autocmd BufNewFile,BufRead * if &syntax == 'sh' | setlocal commentstring=#%s | endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

command! -bar -bang -nargs=? CleanBuffers call s:cleanBuffers("<bang>")

function! s:cleanBuffers(...) abort
  let force = a:0 >= 1 && a:1 ==# '!'
  redir => bufs
    silent! buffers
  redir END

  let hidden = []
  for buf in map(split(bufs, '\n'), 'split(v:val)')
    let bufnr = buf[0] + 0
    let flags = matchstr(join(buf[1:]), '^.*\ze\s\+"')
    let mod = substitute(flags, '\s*', '', 'g')
    let hide = mod ==# 'h' || mod ==# 'h+'
        \ && (force || input(printf("\n%s not saved.\nDelete anyway? [Y]es, (N)o: ",
          \ bufname(bufnr))) =~? '^y\%[es]$')
    if hide
      call add(hidden, bufnr)
    endif
  endfor

  let saved = get(g:, 'bufcleaner_max_save', 3)
  let target = len(hidden) > saved ? join(hidden[0:-saved-1], ' ') : ''
  if !empty(target)
    silent! execute 'bwipeout!' target
  endif
endfunction

" logs
if 1
  fun! ProfileStart()
    let profile_file = '/tmp/vim.'.getpid().'.profile.txt'
    echom "Profiling into" profile_file
    exec 'profile start '.profile_file
    profile! file **
    profile  func *
  endfun

  if get(g:, 'profile')
    call ProfileStart()
  endif
endif

set number

" russian language
imap <C-L> <C-^>
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" auto REMOVE spaces
" https://howchoo.com/g/odg0mdyzmwr/vim-how-to-remove-trailing-whitespace-on-save
autocmd BufWritePre * :%s/\s\+$//e

" NOTE spell
" let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
" set spell spelllang=en_us,ru
" set spellfile=~/.config/nvim/spell/custom.add
" set spellsuggest=fast,20
" set modeline

hi clear SpellCap
hi SpellBad cterm=underline ctermbg=NONE ctermfg=RED

vnoremap <C-c> y: call system("xclip -i", getreg("\""))<CR>
noremap <C-V> :r !xclip -o <CR>
