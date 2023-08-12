local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end

vim.keymap.set('n', '<leader-1>', cmd 'WindowsMaximize')
vim.keymap.set('n', '<leader-2>', cmd 'WindowsMaximizeVertically')
vim.keymap.set('n', '<leader-3>', cmd 'WindowsMaximizeHorizontally')
vim.keymap.set('n', '<leader-4>', cmd 'WindowsEqualize')
