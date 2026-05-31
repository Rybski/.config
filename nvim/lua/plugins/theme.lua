return {
  "ellisonleao/gruvbox.nvim",
  lazy = true,
  event = { "VimEnter" },
  config = function()
    -- Try Omarchy current theme logic
    local theme_path = vim.fn.stdpath("config") .. "/../omarchy/current/theme/neovim.lua"
    local ok, theme_config = pcall(dofile, theme_path)
    if ok and theme_config.colorscheme then
      if theme_config.setup then
        require(theme_config.name).setup(theme_config.setup)
      end
      vim.cmd.colorscheme(theme_config.colorscheme)
    else
      -- fallback to gruvbox
      require("gruvbox").setup({})
      vim.cmd.colorscheme("gruvbox")
    end
  end,
}
