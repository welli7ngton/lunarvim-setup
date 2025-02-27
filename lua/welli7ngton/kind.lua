local M = {}

M.cmp_kind = {
  Class = " ", -- 
  Color = " ",
  Constant = "", -- 
  Constructor = " ",
  Default = " ",
  Enum = "練", -- 
  EnumMember = " ",
  Event = " ",
  Field = "ﰠ ", -- 
  File = " ", -- 
  Folder = " ",
  Function = " ", -- 󰊕
  Interface = " ",
  Keyword = " ", -- 
  Method = "ƒ ",
  Module = " ",
  Operator = " ",
  Property = " ",
  Reference = "🔗",
  Snippet = " ", -- " "," "
  Struct = "פּ ",
  Text = " ",
  TypeParameter = "  ",
  Unit = "塞",
  Value = " ",
  Variable = " ",
}

M.icons = {
  error = " ",
  warn = " ",
  info = "",
  hint = " ",
  code_action = "",
  test = "",
  docs = "",
  clock = " ", -- , 󰅐
  calendar = " ",
  buffer = " ", -- 
  settings = " ",
  ls_inactive = "轢",
  ls_active = "歷",
  question = "",
  screen = "冷", -- 󰹑
  dart = " ",
  config = " ",
  git = "",
  magic = " ",
  exit = " ", -- 󰈆
  repo = "",
  term = " ",
}

M.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "",
    unmerged = "",
    renamed = "➜",
    untracked = "",
    deleted = "",
    ignored = "◌",
  },
  folder = {
    arrow_closed = "",
    arrow_open = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  },
}

M.symbols_outline = {
  File = "",
  Module = "",
  Namespace = "",
  Package = "",
  Class = "",
  Method = "ƒ",
  Property = "",
  Field = "",
  Constructor = "",
  Enum = "練",
  Interface = "ﰮ",
  Function = "",
  Variable = "",
  Constant = "",
  String = "𝓐",
  Number = "#",
  Boolean = "⊨",
  Array = "",
  Object = "⦿",
  Key = "",
  Null = "NULL",
  EnumMember = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = "𝙏",
}

M.todo_comments = {
  FIX = "律",
  TODO = " ",
  HACK = " ",
  WARN = "裂",
  PERF = "龍",
  NOTE = " ",
  ERROR = " ",
  REFS = "",
}

M.numbers = {
  "0 ",
  "1 ",
  "2 ",
  "3 ",
  "4 ",
  "5 ",
  "6 ",
  "7 ",
  "8 ",
  "9 ",
}

M.file_icons = {
  Brown = { "" },
  Aqua = { "" },
  LightBlue = { "", "" },
  Blue = { "", "", "", "", "", "", "", "", "", "", "", "", "", "🤖" },
  DarkBlue = { "", "" },
  Purple = { "", "", "", "", "" },
  Red = { "", "", "", "", "", "" },
  Beige = { "", "", "" },
  Yellow = { "", "", "λ", "", "" },
  Orange = { "", "" },
  DarkOrange = { "", "", "", "", "" },
  Pink = { "", "" },
  Salmon = { "" },
  Green = { "", "", "", "", "", "" },
  LightGreen = { "", "", "", "﵂" },
  White = { "", "", "", "", "", "" },
}

return M
