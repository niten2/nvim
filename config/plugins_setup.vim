let g:vim_markdown_fenced_languages = ["c++=cpp", "viml=vim", "bash=sh", "ini=dosini", "js=js"]

" view
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:vim_json_syntax_conceal = 0
let g:easytags_async = 1
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_sort_regime = "mru"
let g:vim_markdown_folding_disabled = 1
let g:bufExplorerShowRelativePath=1

let g:jellybeans_use_lowcolor_black = 1

" ctrlpvim/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_working_path_mode = 'rw'

" keep cursor column when JK motion
let g:EasyMotion_startofline = 0
let mapleader=","

" NERDTreeFind
let g:NERDTreeChDirMode = 2
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeHighlightCursorline=0

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|tags'

" 'tpope/vim-fugitive'
autocmd QuickFixCmdPost *grep* cwindow

" ale
let g:ale_linters = {
\ 'go': ['gometalinter', 'gofmt'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

" let g:ale_fixers = {
" \  '*': ['remove_trailing_lines', 'trim_whitespace'],
" \  'javascript': ['eslint', 'prettier'],
" \  'css': ['prettier'],
" \}

let g:ale_pattern_options = {
\   '_notes.js': {'ale_enabled': 0},
\   '_sql.js': {'ale_enabled': 0},
\   '_code.js': {'ale_enabled': 0},
\   'old_fake_test.js': {'ale_enabled': 0},
\   'fakeTest.js': {'ale_enabled': 0},
\   '_stendap.js': {'ale_enabled': 0},
\   '_test.js': {'ale_enabled': 0},
\   'operations.js': {'ale_enabled': 0},
\   'apiary.apib': {'ale_enabled': 0},
\   'yarn.lock': {'ale_enabled': 0},
\}


let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

" AnyFoldActivate
autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
set foldlevel=20
hi Folded term=NONE cterm=NONE

autocmd CompleteDone * silent! pclose!

let g:deoplete#enable_at_startup = 1

" neosnippet
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

imap <Tab> <Plug>(neosnippet_expand_or_jump)
smap <Tab> <Plug>(neosnippet_expand_or_jump)

xmap <Tab> <Plug>(neosnippet_expand_target)

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#enable_completed_snippet = 1
let g:openbrowser_github_url_exists_check=0
