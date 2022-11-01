-- Custom Neovim Keymappings
-- in Lua
-- :: Documentation
-- vim.api : Functions in the Vim API
-- vim.api.nvim_set_keymap(string mode, string custom_keybind, string command, dict optionals}  : Set custom keymappings

-- Development
--- Python
vim.api.nvim_set_keymap(
    -- Run this current script
    "n",
    "<leader>r",
    ":!python %<CR>",
    {
        noremap = true
    }
)



