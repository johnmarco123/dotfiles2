-- Define a function to run the current filetype interpreter
function RunFiletypeInterpreter()
  local filetype = vim.bo.filetype
  if filetype == "python" then
    vim.cmd[[:w | !python3 %]]
  elseif filetype == "javascript" then
    vim.cmd[[:w | !node %]]
  elseif filetype == "lua" then
    vim.cmd[[:w | luafile %]]
  elseif filetype == "typescript" then
    vim.cmd[[:w | :!npx ts-node %]]
  elseif filetype == "ps1" then
    vim.cmd[[:w | :! ./%]]
  elseif filetype == "rust" then
    vim.cmd[[:w | :!cargo run]]
  elseif filetype == "go" then
    vim.cmd[[:w | :!go run %]]
  elseif filetype == "php" then
    vim.cmd[[:w | :!php %]]
  else
    print("No interpreter found for filetype " .. filetype)
  end
end
vim.api.nvim_set_keymap("n", "<leader>r", ":w <bar> lua RunFiletypeInterpreter()<CR>", { silent = true })


