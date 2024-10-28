lvim.builtin.lualine.options = {
  theme = "horizon",
  icons_enabled = true,
}

lvim.builtin.lualine.sections = {
  lualine_a = { "mode" },
  lualine_b = { "branch", "diff" },         -- Mostra as mudanças de Git (adicionadas, modificadas, excluídas)
  lualine_c = { { "filename", path = 1 } }, -- Exibe o caminho completo do arquivo
  lualine_x = { "diagnostics" },            -- Mostra erros, warnings e outros diagnósticos
  lualine_y = { "filetype" },
  lualine_z = { "progress", "location" }
}

lvim.builtin.lualine.inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = { "filename" },
  lualine_x = { "location" },
  lualine_y = { "encoding", "fileformat", "filetype" },
  lualine_z = {}
}
