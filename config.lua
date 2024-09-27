-- Importa os módulos de configuração personalizados
require("welli7ngton.options")     -- Configurações gerais
require("welli7ngton.plugins")     -- Plugins
require("welli7ngton.colorscheme") -- Tema de cores
require("welli7ngton.autocmds")    -- Comandos automáticos
require("welli7ngton.filetype")    -- Configurações de tipos de arquivos
require("welli7ngton.dashboard")   -- Configuração de dashboard e banners
require("welli7ngton.which-key")
require("welli7ngton.keymaps")

-- Configurações gerais do LunarVim
lvim.log.level = "warn"
vim.opt.timeoutlen = 500
lvim.format_on_save = true
