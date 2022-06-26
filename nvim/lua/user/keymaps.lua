-- options
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
--keymap("", ";", "<Nop>", opts)
--vim.g.mapleader = ";"
--vim.g.maplocalleader = ";"

-- Normal --
-- Better window navigation
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-l>", "<C-w>l", opts)
keymap("n", "<A-v>", ":vsp<CR>", opts)
keymap("n", "<A-o>", "<C-w>o", opts)
keymap("n", "<A-O>", "<C-w>c", opts)
keymap("n", "<A-=>", "<C-w>=", opts)
keymap("n", "<A-1>", ":tabn 1<CR>", opts)
keymap("n", "<A-2>", ":tabn 2<CR>", opts)
keymap("n", "<A-3>", ":tabn 3<CR>", opts)
keymap("n", "<A-4>", ":tabn 4<CR>", opts)
keymap("n", "<A-5>", ":tabn 5<CR>", opts)
keymap("n", "<A-6>", ":tabn 6<CR>", opts)
keymap("n", "<A-7>", ":tabn 7<CR>", opts)
keymap("n", "<A-8>", ":tabn 8<CR>", opts)
keymap("n", "<A-9>", ":tabn 9<CR>", opts)
keymap("n", "<A-0>", ":tabn 10<CR>", opts)
keymap("n", "<leader>to", ":tabo<CR>", opts)

keymap("n", "<Space>=", ":resize +6<CR>", opts)
keymap("n", "<Space>-", ":resize -6<CR>", opts)
keymap("n", "<Space>.", ":vertical resize +6<CR>", opts)
keymap("n", "<Space>,", ":vertical resize -6<CR>", opts)

-- i j remap to gi gj to get the consistent behaviour in wrap content mode (i.e. set wrap)
-- keymap("n", "j", "<Plug>(accelerated_jk_gj)", opts)
-- keymap("n", "k", "<Plug>(accelerated_jk_gk)", opts)


-- FileExpoler
-- keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)
keymap('v', '<leader>f', "<ESC><cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
-- no highlight
keymap("n", "<bs>", ":nohl<cr>:redraw!<cr>", opts)

-- exit cur window
keymap("n", "<leader>q", ":qa<cr>", opts)
keymap("n", "Q", ":qa<CR>", opts)
keymap("n", "q", "<Nop>", opts)

-- delete cur buffer
keymap("n", "<leader>d", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)
keymap("n", "<leader>D", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)
-- exit whole program
keymap("n", "ZZ", ":lua require('user.utils').SaveAndExit()<cr>", opts)
-- remap macro record key
-- cancel q

-- center cursor
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "J", "mzJ`z", opts)
-- keymap("n", "j", "jzz", opts)
-- keymap("n", "k", "kzz", opts)

-- Resize with arrows
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "R", ":bnext<CR>", opts)
-- keymap("n", "E", ":bprevious<CR>", opts)
-- NOTE: E/R navigation needs  'bufferline' plugin
keymap("n", "<C-h>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<C-l>", ":BufferLineCyclePrev<CR>", opts)

-- Navigate line
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)

-- Move text up and down
--keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
--keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jl fast to enter
keymap("i", "jl", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("n", "<A-t>", ":vsp | terminal<CR>i", opts)
-- Esc 回 Normal 模式
keymap("t", "<Esc>", "<C-\\><C-n>", opts)
keymap("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opts)
keymap("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opts)
keymap("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opts)
keymap("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opts)
keymap("t", "<leader>h", [[ <C-\><C-N><C-w>h ]], opts)
keymap("t", "<leader>j", [[ <C-\><C-N><C-w>j ]], opts)
keymap("t", "<leader>k", [[ <C-\><C-N><C-w>k ]], opts)
keymap("t", "<leader>l", [[ <C-\><C-N><C-w>l ]], opts)

-- lsp keymap location: usr/lsp/handler.lua


keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
--keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_cursor({ previewer = flase, winblend = 30 }))<cr>", opts)
--keymap("n", "<A-n>", "<cmd>lua require('telescope').extensions.frecency.frecency(require('telescope.themes').get_cursor({ previewer = false }))<cr>", opts)
keymap("n", "<A-n>", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<A-m>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<A-M>", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts)
keymap("n", "<A-b>", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<A-p>", "<cmd>SymbolsOutline<cr>", opts)

-- bookmarks
-- keymap("n", "<leader>m", "<cmd>Telescope vim_bookmarks current_file<cr>", opts)
keymap("n", "<leader>m", "<cmd>Telescope vim_bookmarks all<cr>", opts)


keymap("n", "<leader>h", "<cmd>ClangdSwitchSourceHeader<cr>", opts)
keymap("n", "<leader>u", "<cmd>Trouble lsp_references<cr>", opts)

-- calltree
keymap("n", "<leader>in", "<cmd>lua vim.lsp.buf.incoming_calls()<cr>", opts)

-- debug
keymap("n", "<leader>bb",
  "<cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>", opts)
keymap("n", "<leader>bB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
-- keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)
keymap("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
keymap("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<F9>", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap('n', '<F10>','<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
keymap("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dx", "<cmd>lua require'dap'.terminate()<cr>", opts)



-- comment
--keymap("n", "gcf", "<cmd>Dox<cr>", opts)


-- spell check
-- vim.cmd( [[ nnoremap <leader>s :call search('\w\>', 'c')<CR>a<C-X><C-S> ]])

-- gtags
-- find functions calling this function
keymap("n", "<leader>U", ":lua require('user.utils').GtagsRefernce()<cr>", opts)
-- find definition
keymap("n", "<leader>T", ":lua require('user.utils').GtagsText()<cr>", opts)
