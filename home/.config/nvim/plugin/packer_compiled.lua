-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\Zachary\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\Zachary\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Zachary\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Zachary\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Zachary\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\"configurations.plugins.barbar\frequire\0" },
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\nA\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0&configurations.plugins.catppuccin\frequire\0" },
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\git-messenger.vim",
    url = "https://github.com/rhysd/git-messenger.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0$configurations.plugins.gitsigns\frequire\0" },
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0#configurations.plugins.lualine\frequire\0" },
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  neoterm = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\neoterm",
    url = "https://github.com/kassio/neoterm"
  },
  nerdcommenter = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\nvim-compe",
    url = "https://github.com/hrsh7th/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\nvim-lspinstall",
    url = "https://github.com/kabouzeid/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n@\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0%configurations.plugins.nvim-tree\frequire\0" },
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nF\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0+configurations.plugins.nvim-treesitter\frequire\0" },
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0%configurations.plugins.telescope\frequire\0" },
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-grammarous"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\vim-grammarous",
    url = "https://github.com/rhysd/vim-grammarous"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\vim-test",
    url = "https://github.com/janko-m/vim-test"
  },
  ["vim-trailing-whitespace"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\vim-trailing-whitespace",
    url = "https://github.com/bronson/vim-trailing-whitespace"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0%configurations.plugins.which-key\frequire\0" },
    loaded = true,
    path = "C:\\\\Users\\Zachary\\Desktop\\Main_Workspace\\portable\\Utilities\\Text Editor\\Neovim Windows\\nvim-win64-v0.8.0\\data\\Zachary\\nvim-data\\site\\pack\\packer\\start\\which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\"configurations.plugins.barbar\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0#configurations.plugins.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0$configurations.plugins.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0%configurations.plugins.nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0%configurations.plugins.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0%configurations.plugins.which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nF\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0+configurations.plugins.nvim-treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0&configurations.plugins.catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
