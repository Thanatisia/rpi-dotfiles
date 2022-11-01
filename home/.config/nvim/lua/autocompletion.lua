--- Neovim Autocompletion Script
-- Setup autocomplete in neovim using built-in functionality
-- Can be called by calling `lua require('autocompletion')` from your init.vim
--
-- :: Documentation
-- vim.api.nvim_set_keymap(string mode, string custom_keybind, string command, dict optionals}  : Set custom keymappings
--
-- :: Dependencies
-- @neovim/nvim-lspconfig
-- @hrsh7th/nvim-compe

-- LSP configs
vim.api.nvim_set_keymap("n", "gd <cmd>lua", "vim.lsp.buf.definition()<CR>", {noremap = true,}) -- Go to Definition
vim.api.nvim_set_keymap("n", "gD <cmd>lua", "vim.lsp.buf.declaration()<CR>", {noremap = true,}) -- Go to Declaration
vim.api.nvim_set_keymap("n", "gr <cmd>lua", "vim.lsp.buf.references()<CR>", {noremap = true,}) -- Go to References
vim.api.nvim_set_keymap("n", "gi <cmd>lua", "vim.lsp.buf.implementation<CR>", {noremap = true,}) -- Go to Implementation
vim.api.nvim_set_keymap("n", "K <cmd>lua", "vim.lsp.buf.hover()<CR>", {noremap = true,}) -- Hover

