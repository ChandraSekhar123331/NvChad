local plugins = {

  { "elkowar/yuck.vim" , lazy = false },  -- load a plugin at startup

  -- You can use any plugin specification from lazy.nvim
  {
    "Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist" },
    config = function()
      require "custom.configs.truezen" -- just an example path
    end,
  },

  -- this opts will extend the default opts 
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html", "css", "bash",

        -- your own ones
        "bash", "bibtex", "c", "c_sharp", "cmake", "clojure", "comment", "commonlisp", "cpp", "css", "cuda", "diff", "dockerfile", "fish", "fsh", "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore", "go", "haskell", "html", "ini", "java", "javascript", "json", "json5", "julia", "kotlin", "latex", "ledger", "llvm", "lua", "make", "markdown_inline", "matlab", "ocaml", "perl", "php", "proto", "python", "regex", "ruby", "rust", "scala", "scss", "solidity", "sql", "svelte", "toml", "typescript", "vim", "vimdoc", "vue", "yaml"
      },
    },
  },

  -- if you load some function or module within your opt, wrap it with a function
  {
   "nvim-telescope/telescope.nvim",
   opts = {
     defaults = {
       mappings = {
         i = {
           ["<esc>"] = function(...)
               require("telescope.actions").close(...)
            end,
          },
        },
      },
    },
   },

   {
     "folke/which-key.nvim",
     enabled = false,
   },

  --lsp-config for configuring lsp servers(linting, formatting etc..)
  {
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
  },

  -- mason -- tool used for installing required lsp servers
  {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "angular-language-server",
        "bash-language-server",
        "black",
        "clang-format",
        "clangd",
        "cmake-language-server",
        "css-lsp",
        "deno",
        "dockerfile-language-server",
        "emmet-ls",
        "eslint-lsp",
        "eslint_d",
        "gopls",
        "grammarly_languageserver",
        "html-lsp",
        "intelephense",
        -- "jdtls",
        "jedi-language-server",
        "json-lsp",
        -- "julia-lsp",
        "kotlin-language-server",
        "lemminx",
        "ltex-ls",
        "lua-language-server",
        "marksman",
        "powershell-editor-services",
        "prettier",
        "r-languageserver",
        "ruby-lsp",
        "solang",
        "sqlls",
        "stylua",
        "svelte-language-server",
        "tailwindcss-language-server",
        "taplo",
        "vetur-vls",
        "vim-language-server",
        "yaml-language-server",
      },
    },
  },



}

return plugins


