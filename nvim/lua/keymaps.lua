-- lua/keymaps.lua

-- Map H to start of line and L to end of line
vim.keymap.set({'n', 'v'}, 'H', '^', { desc = 'Move to first non-blank character' })
vim.keymap.set({'n', 'v'}, 'L', '$', { desc = 'Move to end of line' })

-- Syncs Neovim yanks directly to the system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Fixes Windows Ctrl+C / Ctrl+V behavior safely
pcall(vim.keymap.del, {'n', 'v'}, '<C-c>')
pcall(vim.keymap.del, 'i', '<C-c>')

-- Paste over visually selected text without copying it to the register
vim.keymap.set('v', 'P', '"_dP', { desc = 'Paste without overwriting register' })
