local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Snippet para um caso de teste básico
  s("rf", {
    t({ "*** Library ***", "" }),
    t({ "\n", "" }),
    t({ "\n", "" }),
    t({ "\n", "" }),
    t({ "*** Variables ***", "" }),
    t({ "\n", "" }),
    t({ "\n", "" }),
    t({ "\n", "" }),
    t({ "*** Keywords ***", "" }),
    t({ "\n", "" }),
    t({ "\n", "" }),
    t({ "\n", "" }),
    t({ "*** Tasks ***", "" }),
    t({ "\n", "" }),
    t({ "\n", "" }),
    t({ "\n", "" }),
  }),
  s("_main", {
    t({ "if __name__ == '__main__':", "" }),
    t({ "\t", "" }),
    i({ "\nprint('deu certo papai')", "" }),
    i({ "\tpass", "" }),
    t({ "\n", "" }),
  })
}
