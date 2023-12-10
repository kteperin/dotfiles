local function map(modes, lhs, rhs, opts)
    opts = opts or { noremap = true, silent = true }
    vim.keymap.set(modes, lhs, rhs, opts)
end

local function input(text)
    return function() vim.api.nvim_input(text) end
end

local function quickfix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end

map({ "n", "i" }, "<C-s>", "<cmd>w!<CR>")
map({ "n", "i" }, "<C-S-q>", "<cmd>q!<CR>")
map({ "n", "i" }, "<C-S-x>", "<cmd>x!<CR>")

map({ "n" }, "<C-q><C-f>", quickfix)

map({ "v" }, "<C-c>", '"+y')
map({ "v" }, "<C-x>", '"+x')
map({ "i" }, "<C-v>", input('<Esc>"+pi'))
map({ "n", "v" }, "<C-v>", input('<Left>"+p'))
map({ "c" }, "<C-v>", "<C-r>+")

map({ "n", "i", "v" }, "<C-a>", "<cmd>normal ggVG<CR>")

map({ "n", "i" }, "<C-z>", "<cmd>undo<CR>")
map({ "n", "i" }, "<C-S-z>", "<cmd>redo<CR>")

map({ "n", "i" }, "<S-Down>", "<Esc>v<Down>")
map({ "v" }, "<S-Down>", "<Down>")
map({ "n", "i" }, "<S-Up>", "<Esc>v<Up>")
map({ "v" }, "<S-Up>", "<Up>")

map({ "n", "i" }, "<S-Left>", "<Esc>v<Left>")
map({ "v" }, "<S-Left>", "<Left>")
map({ "n", "i" }, "<S-Right>", "<Esc>v<Right>")
map({ "v" }, "<S-Right>", "<Right>")

map({ "n", "i" }, "<A-Left>", "<Esc>^i")
map({ "v", "c" }, "<A-Left>", "^")
map({ "n" }, "<A-Right>", "<End>a")
map({ "i", "v", "c" }, "<A-Right>", "<End>")

map({ "n", "i", "v" }, "<C-Left>", "<cmd>normal b<CR>")
map({ "n", "i", "v" }, "<C-Right>", "<cmd>normal w<CR>")

map({ "n", "i" }, "<A-Down>", "<cmd>move +1<CR>")
map({ "n", "i" }, "<A-Up>", "<cmd>move -2<CR>")
map({ "n", "i" }, "<C-d>", "<cmd>normal yyp<CR>")

map({ "i", "c" }, "<C-h>", "<C-w>")

map({ "n", "i" }, "<C-_>", "<cmd>normal gcc<CR>")
map({ "v" }, "<C-_>", input("gc"))

map({ "n", "i" }, "<C-e>", "<esc><cmd>NvimTreeOpen<CR>")

map({ "n", "i" }, "<C-i>", "<cmd>Telescope find_files<CR>")
map({ "n", "i" }, "<C-f>", "<cmd>Telescope live_grep<CR>")
