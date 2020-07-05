""Установка плагинов: :PlugInstall

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'

"Themes
"Plug 'morhetz/gruvbox'
Plug 'ErichDonGubler/vim-sublime-monokai'

call plug#end()

set modifiable
set hlsearch
set incsearch

"Всё, что связано с темами
set background=dark
colorscheme sublimemonokai
set number "установка нумерации строк
set guifont=Monaco:h18
set t_ut=''

"Отметка табов
set listchars=tab:.\ ,extends:>,precedes:<,trail:.,nbsp:.

"Табы
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

"Синтаксис 
"Подсвечиваем все что можно подсвечивать

syntax on
let python_highlight_all = 1

" Включаем 256 цветов в терминале

set t_Co=256

"В .py файлах включаем умные отступы после ключевых слов

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"mappings

map <C-l> :NERDTreeToggle<CR>


"let
"letAirline
let g:airline_powerline_fonts = 1 
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" 
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0 
