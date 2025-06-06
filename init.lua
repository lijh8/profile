-- ~/.config/nvim/init.lua

-- https://neovim.io/doc/user/nvim.html#nvim-from-vim ,
vim.opt.runtimepath:prepend("~/.vim")
vim.opt.runtimepath:append("~/.vim/after")
vim.opt.packpath = vim.opt.runtimepath:get()
vim.cmd("source ~/.vimrc")

-- terminal
-- split first, C-W-S , :term ,
-- enter and leave term mode: i , C-\ C-n ,

-- auto format on save by :w ,
--vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*",
--  callback = function()
--    vim.lsp.buf.format({ async = false })
--  end
--})

-- ~/.config/nvim/pack/nvim/start/nvim-lspconfig/lua/lspconfig/
--require'lspconfig'.clangd.setup{}

-- ~/.config/nvim/pack/nvim/start/aerial.nvim/lua/aerial/
--require("aerial").setup({
--  layout = {
--    width = 25,
--  },
--  autojump = true,
--})
-- leader key is backslash \ so use \a in normal mode
--vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<CR>")

-- ~/.config/nvim/pack/nvim/start/nvim-treesitter/lua/nvim-treesitter/
--require'nvim-treesitter'.setup{}

--
