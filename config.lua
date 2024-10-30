-- Importa os módulos de configuração personalizados
require("welli7ngton.options")     -- Configurações gerais
require("welli7ngton.plugins")     -- Plugins
require("welli7ngton.colorscheme") -- Tema de cores
require("welli7ngton.autocmds")    -- Comandos automáticos
-- require("welli7ngton.filetype")    -- Configurações de tipos de arquivos
require("welli7ngton.dashboard")   -- Configuração de dashboard e banners
require("welli7ngton.which-key")
require("welli7ngton.keymaps")
require("welli7ngton.general_lsp")
require("welli7ngton.java-lsp")
require("welli7ngton.robotframework-lsp")
require("welli7ngton.statusline")
-- Configurações gerais do LunarVim
lvim.log.level = "warn"
vim.opt.timeoutlen = 500
lvim.format_on_save = true
lvim.transparent_window = false

-- For more snippets
-- And this site to make snippets: https://snippet-generator.app
-- https://github.com/Hydraallen/lvim/blob/main/snippets/java.json

-- C/C++ setup
lvim.lsp.installer.setup.automatic_installation = true

lvim.lsp.installer.setup.ensure_installed = { "clangd" }
