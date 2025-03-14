External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on the platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc.

## LazyLock - explanation

```
{
"plenary.nvim": { "branch": "master", "commit": "3707cdb1e43f5cea73afb6037e6494e7ce847a66" }, --

plenary.nvim - Utility library for common Lua functions, async programming, file operations, etc., required by many plugins.
"neo-tree.nvim": { "branch": "main", "commit": "e6645ecfcba3e064446a6def1c10d788c9873f51" }, File explorer. plenary required
"telescope.nvim": { "branch": "0.1.x", "commit": "a0bbec21143c7bc5f8bb02e0005fa0b982edc026" }, Fuzzy find and picker. plenary required
"todo-comments.nvim": { "branch": "main", "commit": "304a8d204ee787d2544d8bc23cd38d2f929e7cc5" }, plenary required
"git-blame.nvim": { "branch": "master", "commit": "2883a7460f611c2705b23f12d58d398d5ce6ec00" },
"gitsigns.nvim": { "branch": "main", "commit": "76d88f3b584e1f83b2aa51663a32cc6ee8d97eff" },
"fidget.nvim": { "branch": "main", "commit": "a0abbf18084b77d28bc70e24752e4f4fd54aea17" }, -- Useful status updates for LSP.



"telescope-fzf-native.nvim": { "branch": "main", "commit": "dae2eac9d91464448b584c7949a31df8faefec56" },  plenary required
"telescope-ui-select.nvim": { "branch": "master", "commit": "6e51d7da30bd139a6950adf2a47fda6df9fa06d2" }, plenary required
"which-key.nvim": { "branch": "main", "commit": "1f8d414f61e0b05958c342df9b6a4c89ce268766" }
"mason.nvim": { "branch": "main", "commit": "e2f7f9044ec30067bc11800a9e266664b88cda22" }, LSP, DAP, linter, formatter manager
"lazy.nvim": { "branch": "main", "commit": "d8f26efd456190241afd1b0f5235fe6fdba13d4a" }, Plugin manager

  "LuaSnip": { "branch": "master", "commit": "c9b9a22904c97d0eb69ccb9bab76037838326817" },
  "cmp-nvim-lsp": { "branch": "main", "commit": "99290b3ec1322070bcfb9e846450a46f6efa50f0" },
  "cmp-path": { "branch": "main", "commit": "91ff86cd9c29299a64f968ebb45846c485725f23" },
  "cmp_luasnip": { "branch": "master", "commit": "98d9cb5c2c38532bd9bdb481067b20fea8f32e90" },
  "lazydev.nvim": { "branch": "main", "commit": "8620f82ee3f59ff2187647167b6b47387a13a018" },
  "luvit-meta": { "branch": "main", "commit": "55709f183b0742a7e4f47688c284f81148ad4dc0" },
  "mason-lspconfig.nvim": { "branch": "main", "commit": "e942edf5c85b6a2ab74059ea566cac5b3e1514a4" },
  "mason-tool-installer.nvim": { "branch": "main", "commit": "c5e07b8ff54187716334d585db34282e46fa2932" },
  "mini.nvim": { "branch": "main", "commit": "f8533c1efab9810710a4043b5788aceaa38e3e55" },
  "nui.nvim": { "branch": "main", "commit": "53e907ffe5eedebdca1cd503b00aa8692068ca46" },
  "nvim-autopairs": { "branch": "master", "commit": "3d02855468f94bf435db41b661b58ec4f48a06b7" },
  "nvim-cmp": { "branch": "main", "commit": "8c82d0bd31299dbff7f8e780f5e06d2283de9678" },
  "nvim-lspconfig": { "branch": "master", "commit": "339ccc81e08793c3af9b83882a6ebd90c9cc0d3b" },
  "nvim-treesitter": { "branch": "master", "commit": "984214ef8e4ca18d77639663319aabdfba89632f" },
  "vim-sleuth": { "branch": "master", "commit": "be69bff86754b1aa5adcbb527d7fcd1635a84080" },
}
```
