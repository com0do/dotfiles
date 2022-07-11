-- load themes config
require ("user.themes.github-nvim-theme")
-- require ("user.themes.onedark")
-- require "user.conf.github-nvim-theme"

-- cursor color: #61AFEF
local colorscheme = "catppuccin"
-- local colorscheme = "onedark"
-- local colorscheme = "github_dark"

-- if colorscheme == "onedark" then
--   require "user.themes.onedark"
-- elseif colorscheme == "catppuccin" then
--   require "user.themes.catppuccin"
-- end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

