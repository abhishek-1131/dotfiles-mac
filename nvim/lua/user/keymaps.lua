-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

--Basic
vim.cmd("command! W w")
vim.keymap.set("n", "Ð", ":bd <CR>")
vim.keymap.set("n", "Q", "<Nop>")
vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<CR>", "<Nop>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("n", "<space>bh", ":Startify<CR>")

--Leader Mappings
vim.keymap.set("n", "<Leader>.", ":FzfLua files cwd=~/dotfiles/nvim<CR>")
vim.keymap.set("n", "<Leader>f", ":FzfLua files<CR>")
vim.keymap.set("n", "<Leader>h", ":FzfLua oldfiles<CR>")
vim.keymap.set("n", "<Leader>g", ":FzfLua live_grep<CR>")
-- vim.keymap.set("n", "<Leader>d", ":FzfLua lsp_document_diagnostics<CR>")
-- vim.keymap.set("n", "<Leader>w", ":FzfLua lsp_workspace_diagnostics<CR>")
vim.keymap.set("n", "<Leader>s", ":FzfLua blines<CR>")
vim.keymap.set("n", "<Leader>a", ":FzfLua lines<CR>")
vim.keymap.set("n", "<Leader>,", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<Leader>m", ":FzfLua marks<CR>")
vim.keymap.set("n", "<Leader>x", ":Telescope neoclip<CR>")
vim.keymap.set( "n", "<leader>cd", ":lua require'telescope'.extensions.zoxide.list{}<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":Telescope file_browser<CR>", { noremap = true })

vim.keymap.set("n", "<leader>ci", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", { noremap = true, silent = true })
vim.keymap.set("x", "<leader>ci", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')
vim.keymap.set("n", "<Leader>r", ":luafile %<CR>")
vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<Leader>t", ":TagbarToggle<CR>")
vim.keymap.set("n", "<Leader>bf", ":Format<CR>")
vim.keymap.set("n", "<Leader>js", ":G<CR>")
vim.keymap.set("n", "<Leader>jh", ":diffget //2<CR>")
vim.keymap.set("n", "<Leader>jl", ":diffget //3<CR>")
vim.keymap.set("n", "<Leader>jl", ":diffget //3<CR>")

--Search and Replace
vim.keymap.set("n", "cn", "*``cgn")
vim.keymap.set("n", "cN", "*``cgN")

--Moving Text
vim.cmd([[
"Moving text
nnoremap  ̋ :m .+1<CR>==
nnoremap  ̊ :m .-2<CR>==

inoremap  ̋ <Esc>:m .+1<CR>==gi
inoremap  ̊ <Esc>:m .-2<CR>==gi

vnoremap  ̋ :m '>+1<CR>gv=gv
vnoremap  ̊ :m '<-2<CR>gv=gv
]])

--Resizing Windows
vim.cmd([[ 
nnoremap ˚    :resize -2<CR>
nnoremap ˝    :resize +2<CR>
nnoremap -    :vertical resize -2<CR>
nnoremap ˍ    :vertical resize +2<CR>
]])

--Switch Open Buffer
vim.keymap.set("n", "H", ":bprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "L", ":bnext<CR>", { noremap = true, silent = true })

--Better Tabbing
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

--Switching between split windows
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

--Misc
vim.keymap.set("n", "gh", ":Gitsigns preview_hunk<CR>")

--Python
vim.cmd([[ 
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
]])

-- DAP
-- vim.keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- vim.keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
-- vim.keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
-- vim.keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
-- vim.keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- vim.keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
-- vim.keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
-- vim.keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- vim.keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

