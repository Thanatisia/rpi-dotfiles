-- Package Configurations
-- for
-- nvim-treesitter

--- Setup
require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = { "ruby" }
    }
}
