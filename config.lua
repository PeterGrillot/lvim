----- ||| vim config ||| -----
-- Options
vim.opt.relativenumber = false
vim.opt.number = true
vim.opt.signcolumn = "auto"
vim.opt.wrap = false
vim.opt.autoread = true

----- ||| lvim config ||| -----
-- Theme
lvim.colorscheme = "carbonfox"
-- lvim.colorscheme = "duskfox"
-- lvim.colorscheme = "nightfox"
-- lvim.colorscheme = "nordfox"
-- lvim.colorscheme = "terafox"
-- lvim.colorscheme = "dayfox"
-- lvim.colorscheme = "dawnfox"
-- LSP
lvim.format_on_save.enabled = true
-- Normal Mode
lvim.keys.normal_mode["<C-r>"] = "r"
lvim.keys.normal_mode["r"] = "<C-r>"
lvim.keys.normal_mode["<C-d>"] = "yyp"
lvim.keys.normal_mode[","] = "<cmd>BufferLineCycleNext<cr>"
lvim.keys.normal_mode["."] = "<cmd>BufferLineCyclePrev<cr>"
lvim.keys.normal_mode["<S-Up>"] = ":m-2<cr>"
lvim.keys.normal_mode["<S-Down>"] = ":m+1<cr>"
lvim.keys.normal_mode["<C-s>"] = ":w!<cr>"
lvim.keys.normal_mode["t"] = "gg0"
-- Whichkey --
lvim.builtin.which_key.mappings["?"] = { ":e ~/.config/lvim/lvim.txt<cr>", "Open shortcuts" }
-- Visual Mode
lvim.keys.visual_mode["d"] = '"_d'
-- Linting
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}
-- Formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}
-- Plugins
lvim.plugins = { "EdenEast/nightfox.nvim" }
