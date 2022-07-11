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
-- INSERT使用EMACS键位
keymap("i", "<C-a>", "<home>", opts)
keymap("i", "<C-e>", "<end>", opts)
keymap("i", "<C-d>", "<del>", opts)
keymap("i", "<C-_>", "<c-k>", opts)

-- 设置 CTRL+HJKL 移动光标
keymap("n", "<C-h>", "<left>", opts)
keymap("n", "<C-j>", "<down>", opts)
keymap("n", "<C-k>", "<up>", opts)
keymap("n", "<C-l>", "<right>", opts)
keymap("i", "<C-h>", "<left>", opts)
keymap("i", "<C-j>", "<down>", opts)
keymap("i", "<C-k>", "<up>", opts)
keymap("i", "<C-l>", "<right>", opts)

-- 命令模式的快速移动
keymap("c", "<C-h>", "<left>", opts)
keymap("c", "<C-j>", "<down>", opts)
keymap("c", "<C-k>", "<up>", opts)
keymap("c", "<C-l>", "<right>", opts)
keymap("c", "<C-a>", "<home>", opts)
keymap("c", "<C-e>", "<end>", opts)
keymap("c", "<C-f>", "<c-d>", opts)
keymap("c", "<C-b>", "<left>", opts)
keymap("c", "<C-d>", "<del>", opts)
keymap("c", "<C-_>", "<c-k>", opts)

-- <leader>+数字键  切换tab
keymap("n", "<leader>1", "1gt<CR>", opts)
keymap("n", "<leader>2", "2gt<CR>", opts)
keymap("n", "<leader>3", "3gt<CR>", opts)
keymap("n", "<leader>4", "4gt<CR>", opts)
keymap("n", "<leader>5", "5gt<CR>", opts)
keymap("n", "<leader>6", "6gt<CR>", opts)
keymap("n", "<leader>7", "7gt<CR>", opts)
keymap("n", "<leader>8", "8gt<CR>", opts)
keymap("n", "<leader>9", "9gt<CR>", opts)
keymap("n", "<leader>0", "10gt<CR>", opts)

-- ALT+N 切换 tab
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
keymap("i", "<A-1>", "<ESC>:tabn 1<CR>", opts)
keymap("i", "<A-2>", "<ESC>:tabn 2<CR>", opts)
keymap("i", "<A-3>", "<ESC>:tabn 3<CR>", opts)
keymap("i", "<A-4>", "<ESC>:tabn 4<CR>", opts)
keymap("i", "<A-5>", "<ESC>:tabn 5<CR>", opts)
keymap("i", "<A-6>", "<ESC>:tabn 6<CR>", opts)
keymap("i", "<A-7>", "<ESC>:tabn 7<CR>", opts)
keymap("i", "<A-8>", "<ESC>:tabn 8<CR>", opts)
keymap("i", "<A-9>", "<ESC>:tabn 9<CR>", opts)
keymap("i", "<A-0>", "<ESC>:tabn 10<CR>", opts)

-- 缓存：插件 unimpaired 中定义了[b, ]b来切换缓存
keymap("n", "<leader>bn", ":bn<CR>", opts)
keymap("n", "<leader>bp", ":bp<CR>", opts)

-- TAB: 创建 ，关闭，上一个， 下一个，左移，右移
keymap("n", "<leader>tc", ":tabnew<CR>", opts)
keymap("n", "<leader>tq", ":tabclose<CR>", opts)
keymap("n", "<leader>tn", ":tabnext<CR>", opts)
keymap("n", "<leader>tp", ":tabnew<CR>", opts)
keymap("n", "<leader>to", ":tabonly<CR>", opts)

-- 命令模式下的相同快捷
keymap("c", "<m-h>", "<c-left>", opts)
keymap("c", "<m-l>", "<c-right>", opts)

-- ALT+y 删除到行末
keymap("n", "<A-y>", "d$", opts)
keymap("i", "<A-y>", [[<C-\><c-o>d$]], opts)

-- 窗口切换
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-l>", "<C-w>l", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-H>", "<C-w>H", opts)
keymap("n", "<A-L>", "<C-w>L", opts)
keymap("n", "<A-J>", "<C-w>J", opts)
keymap("n", "<A-K>", "<C-w>K", opts)
keymap("n", "<A-o>", "<C-w>o", opts)
keymap("n", "<A-=>", "<C-w>=", opts)
keymap("n", "<A-v>", "<C-w>v", opts)
keymap("n", "<A-V>", "<C-w>s", opts)

keymap("i", "<A-h>", "<C-w>h", opts)
keymap("i", "<A-l>", "<C-w>l", opts)
keymap("i", "<A-j>", "<C-w>j", opts)
keymap("i", "<A-k>", "<C-w>k", opts)
keymap("i", "<A-H>", "<C-w>H", opts)
keymap("i", "<A-L>", "<C-w>L", opts)
keymap("i", "<A-J>", "<C-w>J", opts)
keymap("i", "<A-K>", "<C-w>K", opts)
keymap("i", "<A-o>", "<ESC><C-w>o", opts)
keymap("i", "<A-=>", "<ESC><C-w>=", opts)
keymap("i", "<A-v>", "<ESC><C-w>v", opts)
keymap("i", "<A-V>", "<ESC><C-w>s", opts)

keymap("n", "<Space>=", ":resize +6<CR>", opts)
keymap("n", "<Space>-", ":resize -6<CR>", opts)
keymap("n", "<Space>.", ":vertical resize +6<CR>", opts)
keymap("n", "<Space>,", ":vertical resize -6<CR>", opts)

-- ALT+q 回 Normal 模式
keymap("t", "<m-q>", [[<C-\><C-n>]], opts)
keymap("t", "<A-H>", [[ <C-\><C-N><C-w>h ]], opts)
keymap("t", "<A-L>", [[ <C-\><C-N><C-w>l ]], opts)
keymap("t", "<A-J>", [[ <C-\><C-N><C-w>j ]], opts)
keymap("t", "<A-K>", [[ <C-\><C-N><C-w>k ]], opts)

-- i j remap to gi gj to get the consistent behaviour in wrap content mode (i.e. set wrap)
-- keymap("n", "j", "<Plug>(accelerated_jk_gj)", opts)
-- keymap("n", "k", "<Plug>(accelerated_jk_gk)", opts)


-- FileExpoler
keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)
keymap('v', '<leader>f', "<ESC><cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
-- no highlight
keymap("n", "<bs>", ":nohl<cr>:redraw!<cr>", opts)

-- exit cur window
keymap("n", "<tab>q", ":q<cr>", opts)
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

-- lsp keymap location: usr/lsp/handler.lua

-- telescope
--keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
--keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_cursor({ previewer = flase, winblend = 30 }))<cr>", opts)
--keymap("n", "<A-n>", "<cmd>lua require('telescope').extensions.frecency.frecency(require('telescope.themes').get_cursor({ previewer = false }))<cr>", opts)
--keymap("n", "<A-n>", "<cmd>Telescope buffers<cr>", opts)
-- keymap("n", "<A-m>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<A-,>", "<cmd>lua require'telescope.builtin'.grep_string{}<cr>", opts)
keymap("n", "<A-M>", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts)
--keymap("n", "<A-b>", "<cmd>Telescope help_tags<cr>", opts)
-- keymap("n", "<A-p>", "<cmd>SymbolsOutline<cr>", opts)

-- leaderf
--keymap("n", "<m-m>", [[:<C-U><C-R>=printf("Leaderf! rg -s -w \"%s\" -g !*.json -g !*.map -g !*.d",expand("<cword>"))<cr><cr>)]], opts)
--keymap("n", "<A-p>", ":LeaderfFunction<cr>", opts)

-- bookmarks
-- keymap("n", "<leader>m", "<cmd>Telescope vim_bookmarks current_file<cr>", opts)
-- keymap("n", "<leader>m", "<cmd>Telescope vim_bookmarks all<cr>", opts)


keymap("n", "<leader>h", "<cmd>ClangdSwitchSourceHeader<cr>", opts)
keymap("n", "<leader>u", "<cmd>Trouble lsp_references<cr>", opts)

-- calltree
keymap("n", "<leader>in", "<cmd>lua vim.lsp.buf.incoming_calls()<cr>", opts)

-- debug, other keymap location in : nvimgdb.lua
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
