-- Configure o LSP para o Robot Framework
local lspconfig = require('lspconfig')

lspconfig.robotframework_ls.setup({
  -- Aqui você pode especificar as opções adicionais do LSP
  -- Se você quiser, pode incluir configurações específicas, como linting ou formatters
  on_attach = function(client, bufnr)
    -- Habilitar recursos específicos como formatação ou linting
  end,
  cmd = { "robotframework_ls" },
  filetypes = { "robot" },
  settings = {
    robot = {
      python = {
        interpreter = "python3", -- Use seu interpretador Python, se necessário
      },
      lint = {
        enabled = true, -- Habilitar linting
      }
    }
  }
})
