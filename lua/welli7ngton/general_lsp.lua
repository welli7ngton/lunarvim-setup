-- Adicione esta configuração no seu arquivo config.lua para ativar os LSPs
local lspconfig = require("lspconfig")

lspconfig.jdtls.setup {
  cmd = { 'jdtls' }, -- Certifique-se de que o 'jdtls' esteja no PATH
  filetypes = { 'java' },
  root_dir = lspconfig.util.root_pattern('.git', 'pom.xml', 'gradlew', 'build.gradle'),
  settings = {
    java = {
      home = '/usr/bin/ja',
      jdt = {
        ls = {
          vmargs = {
            '-XX:+UseG1GC',
            '-XX:+UseStringDeduplication',
          },
        },
      },
    },
  },
}


lspconfig.robotframework_ls.setup({
  -- Aqui você pode especificar as opções adicionais do LSP
  -- Se você quiser, pode incluir configurações específicas, como linting ou formatters
  on_attach = function(client, bufnr)
    -- Habilitar recursos específicos como formatação ou linting
  end,
  cmd = { "robotframework_ls" },
  filetypes = { "robot", "resource" },
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

lvim.builtin.treesitter.ensure_installed = {
  "python",
}

-- Python formatter setup
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "black" } }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", args = { "--ignore=E203", filetypes = { "python" } } } }

require("swenv").setup({
  post_set_venv = function()
    vim.cmd("LspRestart")
  end,
})

lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api).pick_venv()<>cr", "Choose Env" },
}
