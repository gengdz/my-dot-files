return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- 在这里安装插件
  -- 主题
  use 'sainnhe/everforest'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}

  use {
    "phaazon/hop.nvim", -- like easymotion, but more powerful
    branch = "v1", -- optional but strongly recommended
  }
  use "terrortylor/nvim-comment"
  use "tpope/vim-surround" -- vim surround

  -- 终端 toggleterm
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }


  -- use "nvim-telescope/telescope-ui-select.nvim"
  -- use "nvim-telescope/telescope-rg.nvim"
  -- use "MattesGroeger/vim-bookmarks"
  -- use "tom-anders/telescope-vim-bookmarks.nvim"
  -- use "nvim-telescope/telescope-dap.nvim" 
  --

  -- 代码高亮等
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    "nvim-treesitter/nvim-treesitter-textobjects",
    commit = "c81382328ad47c154261d1528d7c921acad5eae5",
  } -- enhance texetobject selection
  use "romgrk/nvim-treesitter-context" -- show class/function at the top
  use "andymass/vim-matchup"


  use {"neovim/nvim-lspconfig"}
  use({ "williamboman/nvim-lsp-installer" })

  -- nvim-cmp
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  -- vsnip
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}
  use {'rafamadriz/friendly-snippets'}
  -- lspkind
  use {'onsails/lspkind-nvim'}
  -- lspsaga
  use {'glepnir/lspsaga.nvim'}
  use {'simrat39/symbols-outline.nvim'}
  use 'jose-elias-alvarez/typescript.nvim'

  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

--  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- use "folke/which-key.nvim" -- which  key

  -- 主题
  -- use "projekt0n/github-nvim-theme" 
  -- use 'Mofiqul/vscode.nvim'
  -- use 'folke/tokyonight.nvim'

  -- use {"Leiyi548/vim-im-select"}
  use {"brglng/vim-im-select"}
end)
