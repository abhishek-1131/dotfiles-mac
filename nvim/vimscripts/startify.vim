let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   Recent Files']},
            "\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
            \ { 'type': 'sessions',  'header': ['   Sessions']},
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']},
            \ { 'type': 'commands',  'header': ['   Commands']       },
            \ ]

let g:startify_bookmarks = [
            \ { 'o': '~/vimwiki/Today.md' },
            \ { 'T': '~/vimwiki/ToDo.md' },
            \ { 't': '~/vimwiki/tooling_config.md' },
            \ { 'D': '~/Documents/' },
            \ { 'd': '~/Downloads/' },
            \ { 'c': '~/.config' },
            \ { 'x': '~/.tmux.conf' },
            \ { 'f': '~/.config/fish/config.fish'},
            \ { 'm': '~/.config/nvim/lua/user/keymaps.lua'},
            \ { 'p': '~/.config/nvim/lua/user/plugins.lua'},
            \ { 'v': '~/vimwiki/Vim_Cheatsheet.md' },
            \ { 's': '~/Desktop/scratchpad.py' },
            \ { 'n': '~/vimwiki/Course_Notes.md' },
            \ ]

let g:startify_commands = [
            \]


let g:startify_files_number = 3
"let g:startify_dir_number = 2
let g:startify_custom_header = [
            \ '    __          .__           .__.__   ___.            ',
            \ '   |  | __ ____ |  |__   _____|__|  |__\_ |__ _____    ',
            \ '   |  |/ // __ \|  |  \ /  ___/  |  |  \| __ \\__  \   ',
            \ '   |    <\  ___/|   Y  \\___ \|  |   Y  \ \_\ \/ __ \_ ',
            \ '   |__|_ \\___  >___|  /____  >__|___|  /___  (____  / ',
            \ '        \/    \/     \/     \/        \/    \/     \/  ',
            \ '',
            \ ]

let g:webdevicons_enable_startify = 1
