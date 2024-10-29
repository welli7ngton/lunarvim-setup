local kind = require('welli7ngton.kind')

lvim.leader = "space"

vim.opt.relativenumber = true

-- alterna entre buffers
lvim.keys.normal_mode["<s-l>"] = ":BufferLineCycleNext<cr>"
lvim.keys.normal_mode["<s-h>"] = ":BufferLineCyclePrev<cr>"

-- fecha o buffer atual
lvim.keys.normal_mode["<s-x>"] = ":BufferKill<cr>"

-- centraliza o cursor subindo/descendo o arquivo
lvim.keys.normal_mode["<c-d>"] = "<c-d>zz"
lvim.keys.normal_mode["<c-u>"] = "<c-u>zz"

-- seleciona o arquivo todo ctrl-a
lvim.keys.normal_mode["<c-a>"] = "ggVG"

-- Cria uma aba nova referenciando o arquivo atual
-- gt vai para proxima aba
-- gT vai para aba anterior
-- (123456789)gt escolhe a aba de acordo com o numero digitado
vim.keymap.set('n', 'gn', ":tabe %<cr>")
vim.keymap.set('n', 'gN', ":tabclose<cr>")

lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_references()<cr>",
  kind.cmp_kind.Reference .. " find references"
}

-- Go to definition
lvim.lsp.buffer_mappings.normal_mode["gd"] = {
  ":lua vim.lsp.buf.definition()<cr>",
  kind.cmp_kind.Reference .. " definitions"
}

lvim.lsp.buffer_mappings.normal_mode["gf"] = {
  ":Telescope frecency<cr>",
  kind.cmp_kind.Reference .. " telescope frecency"
}

-- Shift-f para buscar palavras globalmente
vim.api.nvim_set_keymap('n', '<S-f>', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- Mapeamento para <leader>tt abrir o terminal usando ToggleTerm
lvim.keys.normal_mode["<leader>tt"] = "<cmd>ToggleTerm<CR>"
lvim.keys.term_mode["<leader>tt"] = "<cmd>ToggleTerm<CR>"

-- Comandos para copiar conteudo do lunarvim para area de transferencia do sistema
lvim.keys.normal_mode["<leader>y"] = '"+y'
lvim.keys.visual_mode["<leader>y"] = '"+y'
lvim.keys.normal_mode["<leader>Y"] = '"+Y'

-- Remap do modo visual para colar sem sobrescrever o registro de cópia
lvim.keys.visual_mode["<leader>p"] = [["_dP]]

-- Centralizar a tela ao usar 'n' para a próxima ocorrência de busca
lvim.keys.normal_mode["n"] = "nzzzv"
-- Centralizar a tela ao usar 'N' para a ocorrência anterior de busca
lvim.keys.normal_mode["N"] = "Nzzzv"

-- Substituição da palavra sob o cursor globalmente no arquivo com Ctrl+s
lvim.keys.normal_mode["<C-s>"] = [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]

-- Tornar o arquivo executável com Ctrl+x
lvim.keys.normal_mode["<C-x>"] = "<cmd>!chmod +x %<CR>"

-- Expandir ou pular para o próximo item do snippet
vim.api.nvim_set_keymap("i", "<C-.>", "<cmd>lua require'luasnip'.expand_or_jump()<CR>", { noremap = true, silent = true })
-- Pular para o item anterior do snippet
vim.api.nvim_set_keymap("i", "<C-,>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })

-- Função para inserir texto no início da linha selecionada
function InsertAtLineStart()
  vim.cmd(":'<,'>norm I" .. vim.fn.input('Texto a adicionar no início: ') .. ' ')
end

-- Função para inserir texto no fim da linha selecionada
function InsertAtLineEnd()
  vim.cmd(":'<,'>norm A" .. vim.fn.input('Texto a adicionar no fim: '))
end

-- Mapeamento para selecionar visualmente e adicionar texto no início da linha
lvim.keys.visual_mode["<F2>"] = ":<C-U>lua InsertAtLineStart()<CR>"

-- Mapeamento para selecionar visualmente e adicionar texto no fim da linha
lvim.keys.visual_mode["<F3>"] = ":<C-U>lua InsertAtLineEnd()<CR>"
