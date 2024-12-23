local themes = {
  gruvbox = "gruvbox",
  rose_pine = "rose-pine",
  lunar = "lunar",
  gruvbox_material = "gruvbox-material",
  onedarker = "onedarker",
  horizon = "horizon",
  tokyonight = "tokyonight",
  tokyonight_night = "tokyonight-night",
  sonokai = "sonokai",
  ayu = "ayu",
  dracula = "dracula",
  dracula_soft = "dracula-soft",
  synthwave = "synthwave84"
}

lvim.transparent_window = true
lvim.colorscheme = themes.rose_pine

local extra_opts = {
  sonokai = {
    styles = {
      espresso = "espresso",
      shusia = "shusia",
      default = "default",
    },
  },
  ayu = {
    styles = {
      mirage = "mirage",
      light = "light",
      dark = "dark",
    },
  },
  edge = {
    styles = {
      aura = "aura",
      neon = "neon",
    },
    airline_theme = "edge",
    lualine_theme = "edge",
  },
}

if vim.g.neovide then
  lvim.transparent_window = false
  return
end

if lvim.colorscheme == themes.sonokai then
  vim.g.sonokai_style = "espresso"
  vim.g.sonokai_style = "shusia"
  vim.g.sonokai_style = "default"
end

if lvim.colorscheme == themes.edge then
  vim.g.airline_theme = extra_opts.edge.airline_theme
  vim.g.edge_style = extra_opts.edge.styles.aura
  lvim.builtin.lualine.options.theme = extra_opts.edge.lualine_theme
end

if lvim.colorscheme == themes.ayu then
  vim.g.ayucolor = extra_opts.ayu.styles.mirage
end

require 'synthwave84'.setup({
  glow = {
    error_msg = true,
    type2 = true,
    func = true,
    keyword = true,
    operator = false,
    buffer_current_target = true,
    buffer_visible_target = true,
    buffer_inactive_target = true,
  }
})
