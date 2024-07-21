local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	{"Shatur/neovim-ayu"},
	{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
},
{
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
        }
    },

    {'nvim-treesitter/nvim-treesitter'},
    {"neovim/nvim-lspconfig"},

    -- autocomplete
    {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'},
    -- end autocomplete
    {
    "williamboman/mason.nvim"
},
{
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {"jose-elias-alvarez/null-ls.nvim"},
    {'windwp/nvim-autopairs'},
    { "lukas-reineke/indent-blankline.nvim" },
    {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
},
{"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
{'lewis6991/gitsigns.nvim'},
{'akinsho/toggleterm.nvim', version = "*", config = true},
})
