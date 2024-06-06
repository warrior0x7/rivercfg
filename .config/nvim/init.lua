local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

require("lazy").setup({
    'sainnhe/gruvbox-material',
    'elkowar/yuck.vim',
    'akinsho/bufferline.nvim',
    'nvim-tree/nvim-web-devicons'
})

vim.api.nvim_set_option("clipboard","unnamedplus")
vim.opt.hlsearch = true
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

require('bufferline').setup({
    options = {
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_tab_indicators = false,
        indicator = {
            icon = "",
            style = "none"
        },
        modified_icon=" 󰆓"
    };

    highlights = {
        buffer_selected = {
            fg = '#282828',
            bg = '#a9b665',
        },

        modified = {
            fg = '#d8a657',
            bg = '#282828',
        },

        modified_selected = {
            fg = '#d8a657',
            bg = '#282828',
        },
    };

})


vim.g.gruvbox_material_better_performance = 1
-- Fonts
vim.g.gruvbox_material_disable_italic_comment = 0
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_transparent_background = 1
-- Themes
vim.g.gruvbox_material_foreground = 'material'
vim.g.gruvbox_material_background = 'medium'
vim.g.gruvbox_material_ui_contrast = 'low' -- The contrast of line numbers, indent lines, etc.
vim.g.gruvbox_material_float_style = 'dim'  -- Background of floating windows

vim.cmd "colorscheme gruvbox-material"

-- Changing colors of diff mode
vim.api.nvim_set_hl(0, "DiffAdd", { fg = "#282828", bg = "#a9b665"})
vim.api.nvim_set_hl(0, "DiffDelete", { fg = "#282828", bg = "#ea6962"})
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#504945"})
vim.api.nvim_set_hl(0, "DiffText", { fg = "#282828", bg = "#d8a657"})

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        if opts.desc then
            opts.desc = "keymaps.lua: " .. opts.desc
        end
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

map("n", "<tab>", ":bn<enter>") 
map("n", "\\\\", ":noh<enter>") 
