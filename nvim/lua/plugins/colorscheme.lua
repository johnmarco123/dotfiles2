return {
    {
    'folke/tokyonight.nvim',
    config = function()
        vim.cmd('colorscheme tokyonight-night');
        vim.cmd([[autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({higroup="IncSearch", timeout=50})]]);
        vim.cmd [[ highlight IncSearch guibg=#FF8C00]] -- changes the yank color
    end
    }
    --{
    --    'rose-pine/neovim',
    --    name ='rose-pine',
    --    config = function()
    --        vim.cmd('colorscheme rose-pine');
    --        vim.cmd([[autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({higroup="IncSearch", timeout=50})]]);
    --    end

    --},
}
