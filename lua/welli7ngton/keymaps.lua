local kind = require('welli7ngton.kind')

lvim.leader = "space"

-- salva o arquivo ctrl-s
lvim.keys.normal_mode["<c-s>"] = ":w<cr>"

-- alterna entre buffers
lvim.keys.normal_mode["<s-l>"] = ":BufferLineCycleNext<cr>"
lvim.keys.normal_mode["<s-h>"] = ":BufferLineCyclePrev<cr>"

-- fecha o buffer atual
lvim.keys.normal_mode["<s-x>"] = ":BufferKill<cr>"
lvim.keys.normal_mode["<c-d>"] = "<c-d>zz"
lvim.keys.normal_mode["<c-u>"] = "<c-u>zz"

-- seleciona o arquivo todo ctrl-a
lvim.keys.normal_mode["<c-a>"] = "ggVG"
vim.opt.relativenumber = true

vim.keymap.set('n', 'gn', ":tabe %<cr>")

lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_References()<cr>",
  kind.cmp_kind.Reference .. " find references"
}

-- Go to definition
lvim.lsp.buffer_mappings.normal_mode["gd"] = {
  ":lua vim.lsp.buf.definition()<cr>",
  kind.cmp_kind.Reference .. " definitions"
}

lvim.keys.normal_mode["<c-b>"] = ":TmuxNavigateLeft<cr>"

-- Go to File
lvim.lsp.buffer_mappings.normal_mode["gf"] = {
  ":Telescope frecency<cr>",
  kind.cmp_kind.Reference .. " telescope frecency"
}

-- Shift-f para buscar palavras globalmente
vim.api.nvim_set_keymap('n', '<S-f>', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- Mapeamento para <leader>tt abrir o terminal usando ToggleTerm
lvim.keys.normal_mode["<leader>tt"] = "<cmd>ToggleTerm<CR>"
lvim.keys.term_mode["<leader>tt"] = "<cmd>ToggleTerm<CR>"
