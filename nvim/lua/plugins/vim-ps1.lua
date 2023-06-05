-- Powershell syntax highlighting

if vim.fn.has('win32') == 1 then
  return {
    "PProvost/vim-ps1",
    enabled = true
  }
else
  return {}
end
