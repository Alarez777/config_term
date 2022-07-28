local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'Shatur/neovim-ayu'
  use 'Mofiqul/dracula.nvim'
  use 'dense-analysis/ale'
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  
--use 'numirias/semshi'
-- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }
-- diffview
  use {
      'sindrets/diffview.nvim',
      requires = 'nvim-lua/plenary.nvim'
  }
-- bar
  use {
     'feline-nvim/feline.nvim',
      requires = {
        'gitsigns.nvim',
        'nvim-web-devicons'
        },
    }
-- autopair
  use 'windwp/nvim-autopairs'
-- tabs
use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
}
-- movements
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }
  -- indent line
  use 'lukas-reineke/indent-blankline.nvim'
    -- fuzzy finder
  use 'ibhagwan/fzf-lua'
  -- optional for icon support
  requires = { 'kyazdani42/nvim-web-devicons' }
    -- treesitter interface
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-tree-docs'
  use 'p00f/nvim-ts-rainbow'

end)

