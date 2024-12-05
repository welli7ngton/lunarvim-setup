lvim.plugins = {
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require('eyeliner').setup {
        highlight_on_key = true, -- Highlights only after a motion key is pressed
        dim = false,             -- Keeps unhighlighted characters at full opacity
        match = '[0-9a-zA-Z]',
      }
    end
  },
  {
    'welli7ngton/code7runner',
    config = function()
      require('code7runner')
    end
  },
  {
    'welli7ngton/lvim-pomodorow',
    config = function()
      require('pomodorow').setup(30, 5)
    end
  },
  {
    "lukas-reineke/virt-column.nvim",
    opts = {
      char = { "┆" },
      virtcolumn = "115",
      highlight = { "NonText" },
    }
  },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.3.0", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
  },
  { "LunarVim/synthwave84.nvim" }, --sunset theme
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestions = {
          enabled = true,
        },
      })
    end,
  },
  { 'wakatime/vim-wakatime',        lazy = false },
  { 'mg979/vim-visual-multi' },
  { "Mofiqul/dracula.nvim" },
  { 'editorconfig/editorconfig-vim' },
  { 'lunarvim/lunar.nvim' },
  { "morhetz/gruvbox" },

  { 'f-person/git-blame.nvim' },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require('nvim-highlight-colors').setup()
    end
  },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/sonokai" },
  { "sainnhe/edge" },
  { "lunarvim/horizon.nvim" },
  { "tomasr/molokai" },
  { "ayu-theme/ayu-vim" },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
  },

  { "christoomey/vim-tmux-navigator" },
  { "tpope/vim-surround" },
  { "felipec/vim-sanegx",            event = "BufRead" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "ThePrimeagen/harpoon" },
  {
    'nvim-telescope/telescope-frecency.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'kkharji/sqlite.lua' },
  },
  {
    'AckslD/nvim-trevJ.lua',
    config = 'require("trevj").setup()',
    init = function()
      vim.keymap.set('n', '<leader>j', function()
        require('trevj').format_at_cursor()
      end)
    end,
  }
}

table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    local ok, cmp = pcall(require, "copilot_cmp")
    if ok then cmp.setup({}) end
  end,
})

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
end
