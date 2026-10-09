return {
  "sphamba/smear-cursor.nvim",
  cond = function()
    return vim.env.TERM ~= "xterm-kitty" and vim.g.neovide == nil
  end,
  opts = {
    cursor_color = "#d8dee9",
    stiffness = 0.8,
    trailing_stiffness = 0.5,
  },
}
