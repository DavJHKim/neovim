local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { silent = true })

require("lazy").setup({
  spec = {
    {
      "ellisonleao/gruvbox.nvim",
      priority = 1000, -- Ensure it loads before other plugins that might set colorschemes
      config = function()
        vim.cmd.colorscheme "gruvbox"
        -- Optional: Add any gruvbox.nvim setup options here
        -- require("gruvbox").setup({
        --   terminal_colors = true,
        --   contrast = "soft",
        -- })
      end,
    },
    { import = "plugins"},
  },
})

