-- A function to automatically detect file type and choose the corresponding foldmethod
function SetFoldMethod()
    local filetype = vim.bo.filetype

    if filetype == "cpp" then
        vim.wo.foldmethod = "syntax"
        vim.wo.foldnestmax = 1
    else
        vim.wo.foldmethod = "marker"
    end
end

-- vim.o.foldmethod='marker'
-- opt.foldmethod='syntax'
-- opt.foldnestmax=2
--opt.signcolumn = "yes"

-- Automatically call the function when opening a file
vim.cmd("autocmd BufEnter * lua SetFoldMethod()")

local opt = vim.opt
opt.relativenumber = false
opt.number = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.cursorline = false;
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true

--防止包裹
opt.wrap = false
