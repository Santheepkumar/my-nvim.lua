local map = vim.keymap.set
map("n", "<leader>u", require("undotree").toggle, { noremap = true, silent = true })

-- or
map("n", "<leader>uo", require("undotree").open, { noremap = true, silent = true })
map("n", "<leader>uc", require("undotree").close, { noremap = true, silent = true })

map("i", "jk", "<ESC>")
-- Normal mode: Move the current line up or down
map("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })

-- Visual mode: Move selected lines up or down
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Prime

-- map("n", "<leader>pv", vim.cmd.Ex)

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- greatest remap ever
map("x", "<leader>p", [["_dP]])
-- next greatest remap ever : asbjornHaland
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

map({ "n", "v" }, "<leader>d", '"_d')

map("i", "<C-c>", "<Esc>")
-- This is going to get me cancelled

map("n", "Q", "<nop>")
map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
map("n", "<leader>f", vim.lsp.buf.format)

map("v", "yo", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Go to the next buffer
map("n", "A-z", ":bnext<CR>", { noremap = true, silent = true })

-- Go to the previous buffer
--
map("n", "A-x", ":bprevious<CR>", { noremap = true, silent = true })

-- Spectre

map("n", "<leader>R", '<cmd>lua require("spectre").toggle()<CR>', {
  desc = "Toggle Spectre",
})
map("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word",
})
map("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word",
})
map("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})
map({ "n", "v" }, "<C-x>", '"_dd', {
  desc = "Del without yanking",
})

map("n", "<C-A-i>", "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
map("n", "<leader>tw", "<cmd>Twilight<CD>", { noremap = true, silent = true })
