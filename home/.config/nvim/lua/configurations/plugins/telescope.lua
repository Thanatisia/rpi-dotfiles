-- Package Configurations
-- for
-- nvim-telescope

-- telescope

--- Setup
require("telescope").setup {
        extensions = {
            file_browser = {
                theme = "ivy",

                -- Disable netrw and use telescope-file-browser in its place
                hijack_netrw = true,
                mappings = {
                    ["i"] = {
                        -- Your custom insert mode mappings
                    },
                    ["n"] = {
                        -- Your custom normal mode mappings
                    },
                },
            },
        },
    }

-- Telescope File Browser

--- Load Extension
--- To get telescope-file-browser loaded and working with telescope
--- Call load_extension, somewhere after the setup function
require("telescope").load_extension "file_browser"

-- Keymappings
--- Telescope File Browser
vim.api.nvim_set_keymap(
    "n",
    "<c-n>",
    ":Telescope fd<CR>",
    {
        noremap = true
    }
)
