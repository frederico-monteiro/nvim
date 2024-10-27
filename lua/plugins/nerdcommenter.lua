local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


-- Comment out the current line
map('n', '<leader>c<space>', ':NERDCommenterToggle<CR>', opts)

-- Comment out a visual selection
map('v', '<leader>c<space>', ':NERDCommenterToggle<CR>', opts)

-- Comment out the selected lines without adding extra line padding
map('n', '<leader>cc', ':NERDCommenterSexy<CR>', opts)

-- Uncomment the selected lines
map('n', '<leader>cu', ':NERDCommenterUncomment<CR>', opts)

