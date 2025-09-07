require "nvchad.mappings"

local map = vim.keymap.set

-- TODO: try this one, very interesting...
-- map("i", "jk", "<ESC>")

map("n", "<tab>", "<Nop>")
map("n", "<S-tab>", "<Nop>")
map("n", "<C-s>", "<Nop>")

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })

map("n", "<C-Up>", "5<C-w>+", { desc = "increase window height" })
map("n", "<C-Down>", "5<C-w>-", { desc = "decrease window height" })
map("n", "<C-Left>", "5<C-w><", { desc = "decrease window width" })
map("n", "<C-Right>", "5<C-w>>", { desc = "increase window width" })

map("n", "<leader>q", "<cmd> q <CR>", { desc = "close" })

-- conform
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true, timeout_ms = 3000 }
end, { desc = "format" })
map("n", "<leader>fp", function()
  require("conform").format { formatters = { "prettier" } }
end, { desc = "format (prettier)" })

map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "toggle transparency" })

map("n", "<A-k>", ":m-2<CR>==", { desc = "move up" })
map("n", "<A-j>", ":m+<CR>==", { desc = "move down" })

map("n", "d", '"_d')
map("n", "<leader>d", "d")

map("i", "<A-k>", "<ESC>:m-2<CR> ==", { desc = "move up" })
map("i", "<A-j>", "<ESC>:m+<CR> ==", { desc = "move down" })

map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "move up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "move down" })

map("v", "d", '"_d')

map("v", "<leader>d", "d")

map("v", "<", "<gv", { desc = "indent left" })
map("v", ">", ">gv", { desc = "indent right" })

-- tabufline
map("n", "<S-l>", function()
  require("nvchad.tabufline").next()
end, { desc = "goto next buffer" })
map("n", "<S-h>", function()
  require("nvchad.tabufline").prev()
end, { desc = "goto prev buffer" })
map("n", "<S-z>", function()
  require("nvchad.tabufline").move_buf(-1)
end, { desc = "move buffer left" })
map("n", "<S-x>", function()
  require("nvchad.tabufline").move_buf(1)
end, { desc = "move buffer right" })

-- telescope
map("n", "<leader>fl", function()
  require("telescope.builtin").resume()
end)

-- nvimtree
map("n", "<C-PageUp>", ":NvimTreeResize -10<CR>", { desc = "decrease nvimtree" })
map("n", "<C-PageDown>", ":NvimTreeResize +10<CR>", { desc = "increase nvimtree" })

-- Gitsigns
map("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "git blame line" })
map("n", "<leader>gB", ":Gitsigns blame<CR>", { desc = "git blame" })

-- CodeCompanion
map("n", "<leader>aa", ":CodeCompanionChat Toggle<CR>", { desc = "toggle CodeCompanion chat window" })
map("n", "<leader>an", ":CodeCompanionChat<CR>", { desc = "start new CodeCompanion chat" })
map("n", "<leader>al", ":CodeCompanionActions<CR>", { desc = "open CodeCompanion actions menu" })

-- set ft
map("n", "<leader>p0", ":set ft=json<CR>", { desc = "set ft=json" })
