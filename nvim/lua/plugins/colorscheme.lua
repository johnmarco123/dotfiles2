return {
    {
    'folke/tokyonight.nvim',
    config = function()
        vim.cmd('colorscheme tokyonight-night');
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
