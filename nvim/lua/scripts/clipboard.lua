local is_wsl = (vim.fn.has("wsl") == 1) or (vim.env.WSLENV ~= nil) or (string.find(vim.uv.os_uname().release:lower(), "microsoft") ~= nil)

if is_wsl then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = true,
  }
else
  vim.g.clipboard = nil
end
