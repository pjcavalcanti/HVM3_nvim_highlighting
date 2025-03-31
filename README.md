# Instructions

1. Add hvm.vim to ~/.config/nvim/syntax/hvm/
2. Add the following snippet to your `init.lua`

```lua
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.hvm","*.sg"},
  callback = function()
    vim.bo.filetype = "hvm"
    vim.bo.commentstring = "//%s"
  end,
})
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.hvml",
  command = "set filetype=hvml",
})
```
