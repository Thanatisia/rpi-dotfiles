--- Neovim Plugin Script
-- Can be called by calling `lua require('plugins')` from your init.vim

-- Local Variables
local fn = vim.fn
local plugin_config = "configurations.plugins"
local plugin_config_path = fn.stdpath "config" .. "lua/configurations/plugins"

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        -- Execute Commands
        -- Each element is an argument in the command string
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer..."
    vim.cmd [[packeradd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so that we dont error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float {
                border = "rounded"
            }
        end,
    },
}

--- Startup Plugin Manager
return packer.startup(
    function(use)
        --- Import Package Manager
        use 'wbthomason/packer.nvim'

        -- Common packages
        use 'tpope/vim-fugitive' -- Git commands
        use 'vim-airline/vim-airline' -- Status Line; Powerline
        use 'vim-airline/vim-airline-themes' --- Themes for the status bar/statusline 'vim-airline'
        use {
            -- Status Line
            'nvim-lualine/lualine.nvim',
            requires = {
                'kyazdani42/nvim-web-devicons',
                opt = true
            },
            config = function()
                --- Package Configurations
                require('configurations.plugins.lualine')
            end
        }
        use 'rhysd/vim-grammarous' -- Grammar checking
        use 'andymass/vim-matchup' -- Matching parenthesis, brackets etc.
        use 'bronson/vim-trailing-whitespace' -- Highlight trailing spaces
        use 'rhysd/git-messenger.vim'
        use {
            -- Git added/removed in sidebar + inline blame; aka changes made to files are represented
            'lewis6991/gitsigns.nvim', -- Package Name
            requires = {'nvim-lua/plenary.nvim'}, --- Dependencies
            config = function()
                --- Package Configuration Setup
                require('configurations.plugins.gitsigns')
            end
        }

        -- Colorschemes
        use 'marko-cerovac/material.nvim'
        use 'folke/tokyonight.nvim'
        use 'EdenEast/nightfox.nvim'
        use {
            --- Catppuncin
            "catppuccin/nvim",
            as = "catppuccin",
            config = function()
                --- Package Configuration Setup
                require('configurations.plugins.catppuccin')
            end
        }

        --- Package Configurations

        -- Quality of Life
        use {
            --- WhichKey
            "folke/which-key.nvim",
            config = function()
                --- Package Configuration Setup
                require('configurations.plugins.which-key')
            end
        }
        use {
            --- Barbar.nvim
            'romgrk/barbar.nvim',
            requires = {'kyazdani42/nvim-web-devicons'},
            config = function()
                require('configurations.plugins.barbar')
            end
        }


        -- General Development
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
            config = function()
                --- Package Configurations
                require('configurations.plugins.nvim-treesitter')
            end
        }
        use 'scrooloose/nerdcommenter' -- Commenting shortcuts

        -- Intellisense
        use 'neovim/nvim-lspconfig'
        use 'kabouzeid/nvim-lspinstall'
        use 'glepnir/lspsaga.nvim'
        use 'hrsh7th/nvim-compe'

        -- Search
        use {
            'nvim-telescope/telescope.nvim', --- Fuzzy File Finder for Neovim
            requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} },
            config = function()
                require('configurations.plugins.telescope')
            end
        }
        use {'nvim-telescope/telescope-file-browser.nvim', requires = {'nvim-lua/plenary.nvim'}}
        use 'tpope/vim-eunuch' -- Wrappers UNIX commands
        use 'tpope/vim-surround' -- Surrounds characters shortcuts
        use 'tpope/vim-vinegar' -- File Browser for Neovim
        use 'kyazdani42/nvim-web-devicons' -- Icons when searching
        use {
            'nvim-tree/nvim-tree.lua', --- NvimTree Tree File Explorer
            requires = {
                'nvim-tree/nvim-web-devicons', -- Optional: For file icons
            },
            tag = 'nightly', -- Optional: Updated every week (refer to issue #1193)
            config = function()
                --- Package Configurations
                require('configurations.plugins.nvim-tree')
            end
        }

        -- Testing
        use 'kassio/neoterm' -- Terminal Wrapper
        use 'janko-m/vim-test' -- Testing commands

    end
)
