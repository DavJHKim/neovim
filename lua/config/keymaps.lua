-- Reload entire Neovim config (LazyVim / lazy.nvim friendly)
vim.keymap.set("n", "<leader>rr", function()
  -- clear cached Lua modules from your config so require() reloads them
  for name, _ in pairs(package.loaded) do
    if name:match("^config") or name:match("^plugins") then
      package.loaded[name] = nil
    end
  end

  -- re-run your init.lua (LazyVim uses this to bootstrap everything)
  dofile(vim.fn.stdpath("config") .. "/init.lua")

  print("🔄 Config reloaded")
end, { desc = "Reload config" })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<CR>', { desc = 'Telescope References'})
vim.keymap.set('n', '<leader>fc', function()
  require('telescope.builtin').find_files({
    prompt_title = "Neovim Config",
    cwd = vim.fn.stdpath('config'), 
  })
end, { desc = "Search Neovim Config" })
