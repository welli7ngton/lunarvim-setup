lvim.log.level = "warn"
lvim.format_on_save = true

vim.opt.clipboard = "unnamedplus"

vim.filetype.add({
  extension = {
    robot = "robot",
  },
})

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "typescript",
  "json",
  "lua",
  "python",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "html",
  "css",
}

lvim.builtin.treesitter.highlight = { enable = true }

local TERM_DIRECTION = "float" -- Use 'float' for a floating term or 'horizontal' VsCode Like
lvim.builtin.terminal.active = true
lvim.builtin.terminal.direction = TERM_DIRECTION

if TERM_DIRECTION == "horizontal" then
  lvim.builtin.terminal.size = 13
end

lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.filters.custom = {}
lvim.builtin.nvimtree.setup.view.width = 40

lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.project.detection_methods = { "lsp", "pattern" }
lvim.builtin.project.patterns = {
  ".git",
  "package-lock.json",
  "yarn.lock",
  "package.json",
  "requirements.txt",
}

vim.opt.shell = "/bin/zsh"
lvim.format_on_save = true

vim.o.linebreak = true
vim.o.wrap = false
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

lvim.builtin.telescope.defaults.path_display = {
  shorten = 4,
}

vim.opt.fileformat = "unix"
