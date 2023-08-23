require 'moon'

use { base, nvim, conf }

vim.keymap.set('n', 'mm', ':set ft=lua<CR>|:set ts=4<CR>|:set sw=4<CR>')
