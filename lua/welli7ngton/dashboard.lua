local kind = require("welli7ngton.kind")

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "custom"

local header = {
  type = "text",
  val = require("welli7ngton.banners").dashboard(),
  opts = {
    position = "center",
    hl = "Comment",
  },
}

local funny_frase = "Wellcome master."
local date = ""

if vim.fn.has "linux" == 1 or vim.fn.has "mac" == 1 then
  local thingy = io.popen 'echo "$(date +%a) $(date +%d) $(date +%b)" | tr -d "\n"'
  date = thingy:read "*a"
  thingy:close()
else
  date = "  whatever "
end

local funny_f = {
  type = "text",
  val = "└─ " .. kind.icons.code_action .. " " .. funny_frase .. " ─┘",
  opts = {
    position = "center",
    hl = "String",
  },
}

local heading = {
  type = "text",
  val = "┌─ " .. kind.icons.calendar .. " Today is " .. date .. " ─┐",
  opts = {
    position = "center",
    hl = "String",
  },
}

local fortune = require "alpha.fortune" ()
-- fortune = fortune:gsub("^%s+", ""):gsub("%s+$", "")
local footer = {
  type = "text",
  val = fortune,
  opts = {
    position = "center",
    hl = "Comment",
    hl_shortcut = "Comment",
  },
}

local function button(sc, txt, keybind)
  local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

  local opts = {
    position = "center",
    text = txt,
    shortcut = sc,
    cursor = 5,
    width = 20,
    align_shortcut = "right",
    hl_shortcut = "Number",
    hl = "Function",
  }
  if keybind then
    opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
  end

  return {
    type = "button",
    val = txt,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
      vim.api.nvim_feedkeys(key, "normal", false)
    end,
    opts = opts,
  }
end

local buttons = {
  type = "group",
  val = {
    button("a", " " .. kind.nvim_tree_icons.symlink .. " New File", ":ene <BAR> startinsert <CR>"),
    button(
      "s",
      " " .. kind.icons.git .. " LazyGit",
      ":lua require('lvim.core.terminal')._exec_toggle({cmd = 'lazygit', count = 1, direction = 'float'})<CR>"
    ),
    button("d", " " .. kind.icons.docs .. " Recents", ":Telescope oldfiles<CR>"),
    button("f", " " .. kind.cmp_kind.Folder .. "Find Files", ":Telescope find_files<CR>"),
    button("q", " " .. kind.icons.settings .. "Configs", ":e ~/.config/lvim/config.lua<CR>"),
    button("w", " " .. "✖" .. " Exit", ":q<CR>"),
  }
}

local section = {
  header = header,
  buttons = buttons,
  funny_f = funny_f,
  heading = heading,
  footer = footer,
}

lvim.builtin.alpha.custom = {
  config = {
    layout = {
      { type = "padding", val = 1 },
      section.header,
      { type = "padding", val = 1 },
      section.heading,
      section.footer,
      section.funny_f,
      section.buttons,
    },
    -- opts = {
    --   margin = 5,
    -- },
  }
}
