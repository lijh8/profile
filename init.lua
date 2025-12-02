-- ~/.config/nvim/init.lua

-- multiple windows: C-W-S , C-W-V , :close , :term ,
-- navigate: C-W-H , C-W-L , C-W-J , C-W-K ,
-- term mode: C-\ C-n , or insert mode: i , a ,

-- :messages  -- check for messages with echom

vim.cmd('filetype off')
vim.cmd('syntax off')

vim.opt.autoindent = true
--vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.mouse = "a"  -- select to ctrl-c: win,linux:shift+mouse, mac:fn+mouse
vim.opt.wrapscan = false
vim.opt.number = true
vim.opt.ruler = true  -- vim-tiny, show current line number at status line
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.updatetime = 200  -- CursorHold, tagbar

-- autosave
vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
  pattern = "*",
  callback = function() vim.cmd("silent! update") end,
})

-- highlight current word
vim.cmd([[
  let old_isk = &isk | set isk=@,48-57,_,192-255 | autocmd CursorMoved,CursorMovedI * execute 'match Visual' (getline('.')[col('.')-1] =~# '\w' ? '/\<' . escape(expand('<cword>'), '/\') . '\>/' : '//') | let &isk = old_isk
]])

-- netrw
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_list_hide = [[.*\.swp$]]
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 20
vim.g.netrw_mousemaps = 0
vim.keymap.set("n", "<F2>", "<cmd>Lexplore<CR>", { silent = true })

-- Termdebug
--vim.cmd("packadd termdebug")
--vim.keymap.set("n", "<F5>", "<cmd>Termdebug<CR>", { silent = true })
--vim.keymap.set("t", "<F10>", "<C-\\><C-N>:call TermDebugSendCommand('next')<CR>", { silent = true })
--vim.keymap.set("t", "<F11>", "<C-\\><C-N>:call TermDebugSendCommand('step')<CR>", { silent = true })
--vim.keymap.set("t", "<F12>", "<C-\\><C-N>:call TermDebugSendCommand('finish')<CR>", { silent = true })


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
