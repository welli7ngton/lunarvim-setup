-- Adicione esta configuração no seu arquivo config.lua para ativar os LSPs
local lspconfig = require("lspconfig")

-- Exemplo para Python
lspconfig.pyright.setup {}

-- Exemplo para TypeScript e JavaScript
lspconfig.tsserver.setup {}

-- Exemplo para HTML
lspconfig.html.setup {}
