-- This file is supposed to be ~/.config/nvim/init.vim


vim.opt.modeline=true
vim.opt.tabstop=8
vim.opt.expandtab=true
vim.opt.shiftwidth=4
vim.opt.softtabstop=4
--vim.opt.listchars+=space:_

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  -- use the command fc-list to find fonts
  vim.o.guifont = "JetBrainsMonoNL Nerd Font:h8"
end
