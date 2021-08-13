"coc
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}
" let g:coc_global_extensions=['coc-explorer']
let g:coc_global_extensions = [
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yank',
    \ 'coc-sh',
    \ 'coc-yaml',
    \ 'coc-cmake',
    \ 'coc-snippets',
    \ 'coc-clangd',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-word',
    \ 'coc-ci',
    \ 'coc-zi',
    \ 'coc-just-complete',
    \ 'coc-python',
    \ 'coc-marketplace',
    \ 'coc-explorer',
    \ 'coc-pyright',
  \ ]

"" 检索
Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}
Plug 'junegunn/fzf.vim' | Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}

"" c debug
Plug 'puremourning/vimspector'

"" 注释插件
Plug 'scrooloose/nerdcommenter'

"" 生成注释文档
Plug 'kkoomen/vim-doge', {'do': {-> doge#install()}}

Plug 'airblade/vim-gitgutter'

"" 全局替换插件
Plug 'brooth/far.vim'

" 主题theme类插件
"Plug 'glepnir/zephyr-nvim'
Plug 'ajmwagar/vim-deus'
"Plug 'rakr/vim-one'
"Plug 'arcticicestudio/nord-vim'
"Plug 'morhetz/gruvbox'
"Plug 'sainnhe/gruvbox-material'
"Plug 'npxbr/gruvbox.nvim'
"Plug 'sainnhe/forest-night'
"Plug 'srcery-colors/srcery-vim'
"Plug 'hardcoreplayers/oceanic-material'
"Plug 'chuling/ci_dark'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'mhartington/oceanic-next'
"Plug '986299679/space-vim-theme'
"Plug 'ayu-theme/ayu-vim'
"Plug 'w0ng/vim-hybrid'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'flrnd/candid.vim'
"Plug 'jaredgorski/spacecamp'
"Plug 'bluz71/vim-moonfly-colors'
"Plug 'cormacrelf/vim-colors-github'
"Plug 'arzg/vim-colors-xcode'
"Plug 'sainnhe/sonokai'
"Plug 'sonph/onehalf'
"Plug 'ghifarit53/tokyonight-vim'
"Plug 'sainnhe/edge'
"Plug 'reedes/vim-colors-pencil'
"Plug 'ChristianChiarulli/nvcode-color-schemes.vim'
"Plug 'arzg/vim-colors-xcode'

" 顶栏和底栏
Plug 'rbong/vim-crystalline'
Plug 'itchyny/lightline.vim'
"Plug 'liuchengxu/eleline.vim'
"Plug 'hoob3rt/lualine.nvim'

" 彩虹括号
Plug 'luochen1990/rainbow'

"" 函数列表
Plug 'liuchengxu/vista.vim', {'on': ['Vista!!', 'Vista']}

"" 自动补全括号
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/hiPairs'

"" 快速包围
Plug 'tpope/vim-surround'
"" Plug 'machakann/vim-sandwich'

"" 重复上次的动作
"Plug 'tpope/vim-repeat'

"" 显示清除尾部空格
Plug 'ntpeters/vim-better-whitespace'

"" 代码段
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

"" 快速选择窗口
Plug 't9md/vim-choosewin'


"" 对齐
Plug 'junegunn/vim-easy-align', {'on': ['EasyAlign', '<Plug>(EasyAlign)']}

"" 缩进线
Plug 'Yggdroot/indentLine', {'on': 'IndentLinesEnable'}

"" 多光标
Plug 'mg979/vim-visual-multi'

"" 悬浮终端
Plug 'voldikss/vim-floaterm', {'on': ['FloatermNew', 'FloatermToggle']}

"" 笔记插件，支持markdown
Plug 'vimwiki/vimwiki'
Plug 'SidOfc/mkdx'

" markdown 预览插件
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug', 'vimwiki'], 'on': 'MarkdownPreview'}
Plug 'mzlogin/vim-markdown-toc', {'on': ['GenTocGFM', 'GenTocRedcarpet', 'GenTocGitLab', 'GenTocMarked']}

"" 功能很强的折叠插件, zc zo
Plug 'pseewald/vim-anyfold', {'on': 'AnyFoldActivate'}

""起始界面
Plug 'mhinz/vim-startify'


" tmux相关插件
if  executable("tmux") && strlen($TMUX)
    " tmux与vim窗口间导航
    Plug 'christoomey/vim-tmux-navigator'
    " tmux.conf set -g focus-events on
    Plug 'tmux-plugins/vim-tmux-focus-events'
    " 在tmux和vim之间进行复制与粘贴
    Plug 'roxma/vim-tmux-clipboard'
    " tmux补全插件
    Plug 'wellle/tmux-complete.vim'
endif

"" 关闭buffer而不关闭窗口
Plug 'rbgrouleff/bclose.vim', {'on': 'Bclose'}

"" 平滑滚动
Plug 'psliwka/vim-smoothie'


"" 最大化窗口，ctrl w o
Plug 'troydm/zoomwintab.vim', {'on': 'ZoomWinTabToggle'}


"" 总是匹配tag
Plug 'valloric/MatchTagAlways', {'for': ['html', 'css', 'xml']}

Plug 'RRethy/vim-illuminate'

"" 加强版的 go to file
Plug 'tpope/vim-apathy'

"" 语法检查
Plug 'rhysd/vim-grammarous', {'for': ['markdown', 'vimwiki', 'md', 'tex']}

if has('nvim')
    Plug 'kyazdani42/nvim-web-devicons'
else
    Plug 'ryanoasis/vim-devicons'
endif

"" 忘记sudo?使用sudowrite或sw
Plug 'lambdalisue/suda.vim'
Plug 'tyru/open-browser.vim'
Plug 'ojroques/vim-scrollstatus'
if has('nvim')
    Plug 'dstein64/nvim-scrollview'
endif

" 显示滚动条
if has('nvim')
  Plug 'dstein64/nvim-scrollview'
  Plug 'norcalli/nvim-colorizer.lua'
endi