# An Opinionated Scala IDE based on NVIM

To run it locally, you can run the following command:

```shell
$ nix run github:satabin/nvim-scala-ide
```

If you want to use pre-compiled versions (linux amd64 and macos arm64), you can [setup my cachix cache first](https://app.cachix.org/cache/satabin#pull). This way you will avoid compiling everything locally the first time.

This flake is based on the following plugins:
 - [nvim-metals](https://github.com/scalameta/nvim-metals) for the language server part.
 - [Lspsaga](https://nvimdev.github.io/lspsaga/) for an amazing LSP experience.
 - [nvim-dap](https://github.com/mfussenegger/nvim-dap), [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui), and [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text) for a smooth debugging experience.
 - [Telescope](https://github.com/nvim-telescope/telescope.nvim) for great list and picker experience.
 - [scaladex.nvim](https://github.com/softinio/scaladex.nvim) to never have to wonder what the group id and artefact id are for `fs2` or `cats-effect` (and any other scala library) ever again.
 - plenty of other QoL improvements plugins and settings, that you can find in the [config](config/) directory.

It uses the amazing [nixvim](https://nix-community.github.io/nixvim/) configuration system for neovim in nix.
