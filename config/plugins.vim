set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'vundleVim/Vundle.vim'
  Plugin 'bling/vim-airline'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'easymotion/vim-easymotion'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'jgdavey/vim-blockle'
  Plugin 'jlanzarotta/bufexplorer'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'raimondi/delimitMate'
  Plugin 'scrooloose/nerdtree'
  Plugin 'shougo/vimproc.vim'
  Plugin 'tpope/vim-classpath'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-leiningen'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-sensible'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'mileszs/ack.vim'
  " Plugin 'valloric/MatchTagAlways' " always highlights the enclosing html/xml tags

  " completed
  " Plugin 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Plugin 'tbodt/deoplete-tabnine', { 'do': './install.sh' } " machine learn completed

  " git
  Plugin 'tpope/vim-fugitive'
  Plugin 'jreybert/vimagit'
  Plugin 'tyru/open-browser.vim'
  Plugin 'tyru/open-browser-github.vim'

  " stippets
  Plugin 'Shougo/neosnippet'
  Plugin 'Shougo/neosnippet-snippets'

  Plugin 'dracula/vim', { 'as': 'dracula' } " color themes

  Plugin 'w0rp/ale' " syntax linter

  " nerdtree
  Plugin 'low-ghost/nerdtree-fugitive'
  Plugin 'nopik/vim-nerdtree-direnter'
  Plugin 'xuyuanp/nerdtree-git-plugin'

  " utils
  Plugin 'asheq/close-buffers.vim'

  " last place
  Plugin 'farmergreg/vim-lastplace'

  Plugin 'vimwiki/vimwiki', { 'branch': 'dev' }
  Plugin 'pseewald/vim-anyfold' " folding

  " NOTE languages
  Plugin 'sheerun/vim-polyglot' " A collection of language packs for Vim.
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'othree/jsdoc-syntax.vim'
  Plugin 'heavenshell/vim-jsdoc'
  Plugin 'othree/jspc.vim'
  Plugin 'chrisbra/NrrwRgn'

  " Bundle 'slim-template/vim-slim.git'
  " Plugin '2072/PHP-Indenting-for-VIm'
  " Plugin 'HerringtonDarkholme/yats.vim'
  " Plugin 'Matt-Deacalion/vim-systemd-syntax'
  " Plugin 'Olical/vim-enmasse'
  " Plugin 'PeterRincker/vim-argumentative'
  " Plugin 'Quramy/tsuquyomi' pushd ~/.vim/bundle/vimproc.vim; make; popd
  " Plugin 'Raimondi/delimitMate'
  " Plugin 'Shougo/denite.nvim'
  " Plugin 'Shougo/echodoc.vim'
  " Plugin 'Shougo/vimshell.vim'
  " Plugin 'SirVer/ultisnips'
  " Plugin 'StanAngeloff/php.vim'
  " Plugin 'Valloric/YouCompleteMe'
  " Plugin 'altercation/vim-colors-solarized'
  " Plugin 'alvan/vim-assistant'
  " Plugin 'ashisha/image.vim'
  " Plugin 'bling/vim-bufferline'
  " Plugin 'briancollins/vim-jst'
  " Plugin 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } " js completed
  " Plugin 'cespare/vim-toml'
  " Plugin 'chr4/nginx.vim'
  " Plugin 'chrisbra/csv.vim'
  " Plugin 'chuwy/vim-wooky-theme'
  " Plugin 'claco/jasmine.vim'
  " Plugin 'deoplete-plugins/deoplete-jedi' phython completed
  " Plugin 'digitaltoad/vim-jade'
  " Plugin 'digitaltoad/vim-pug'
  " Plugin 'eagletmt/ghcmod-vim'
  " Plugin 'ekalinin/Dockerfile.vim'
  " Plugin 'elzr/vim-json'
  " Plugin 'ervandew/supertab'
  " Plugin 'facebook/vim-flow'
  " Plugin 'fatih/vim-go'
  " Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  " Plugin 'garbas/vim-snipmate'
  " Plugin 'gavocanov/vim-js-indent' "indent
  " Plugin 'godlygeek/tabular'
  " Plugin 'greyblake/vim-preview' " markup preview
  " Plugin 'guns/vim-clojure-static'
  " Plugin 'honza/vim-snippets'
  " Plugin 'ianks/vim-tsx'
  " Plugin 'jaxbot/syntastic-react'
  " Plugin 'jeetsukumaran/vim-buffergator'
  " Plugin 'jelera/vim-javascript-syntax'
  " Plugin 'jpalardy/vim-slime'
  " Plugin 'jparise/vim-graphql'
  " Plugin 'k0kubun/vim-open-github'
  " Plugin 'kchmck/vim-coffee-script'
  " Plugin 'leafgarland/typescript-vim'
  " Plugin 'ludovicchabant/vim-gutentags'
  " Plugin 'lyokha/vim-xkbswitch'
  " Plugin 'majutsushi/tagbar'
  " Plugin 'majutsushi/tagbar'
  " Plugin 'marcWeber/vim-addon-mw-utils'
  " Plugin 'mattn/emmet-vim'
  " Plugin 'mbbill/undotree'
  " Plugin 'mhartington/nvim-typescript', {'do': './install.sh'}
  " Plugin 'mhinz/vim-signify'
  " Plugin 'mobiushorizons/fugitive-stash.vim'
  " Plugin 'moll/vim-bbye'
  " Plugin 'moll/vim-node'
  " Plugin 'morhetz/gruvbox'
  " Plugin 'mxw/vim-jsx'
  " Plugin 'nanotech/jellybeans.vim'
  " Plugin 'neovimhaskell/haskell-vim'
  " Plugin 'nikvdp/ejs-syntax'
  " Plugin 'nono/vim-handlebars'
  " Plugin 'othree/html5.vim'
  " Plugin 'othree/yajs.vim'
  " Plugin 'pangloss/vim-javascript'
  " Plugin 'plasticboy/vim-markdown'
  " Plugin 'prettier/vim-prettier'
  " Plugin 'puppetlabs/puppet-syntax-vim'
  " Plugin 'raichoo/haskell-vim'
  " Plugin 'rking/ag.vim'
  " Plugin 'rking/ag.vim'
  " Plugin 'ruanyl/vim-gh-line'
  " Plugin 'sbdchd/neoformat'
  " Plugin 'sbdchd/neoformat'
  " Plugin 'scrooloose/syntastic'
  " Plugin 'sidorares/node-vim-debugger'
  " Plugin 'szw/vim-tags'
  " Plugin 'ternjs/tern_for_vim'
  " Plugin 'thoughtbot/vim-rspec'
  " Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
  " Plugin 'tmatilai/vim-monit'
  " Plugin 'tomlion/vim-solidity'
  " Plugin 'tomtom/tlib_vim'
  " Plugin 'tpope/vim-bundler'
  " Plugin 'tpope/vim-dispatch'
  " Plugin 'tpope/vim-endwise'
  " Plugin 'tpope/vim-fireplace'
  " Plugin 'tpope/vim-git'
  " Plugin 'tpope/vim-haml'
  " Plugin 'tpope/vim-projectionist'
  " Plugin 'tpope/vim-rails'
  " Plugin 'tpope/vim-rvm'
  " Plugin 'tpope/vim-sleuth'
  " Plugin 'tyok/nerdtree-ack'
  " Plugin 'vim-airline/vim-airline-themes'
  " Plugin 'vim-buffergator'
  " Plugin 'vim-ruby/vim-ruby'
  " Plugin 'vim-scripts/AutoComplPop'
  " Plugin 'vim-scripts/JavaScript-Indent'
  " Plugin 'vim-scripts/paredit.vim'
  " Plugin 'vim-syntastic/syntastic'
  " Plugin 'wlangstroth/vim-racket'
  " Plugin 'wokalski/autocomplete-flow'
  " Plugin 'wokalski/autocomplete-flow'
  " Plugin 'wting/rust.vim'
  " Plugin 'xolox/vim-easytags'
  " Plugin 'xolox/vim-misc'
call vundle#end()
