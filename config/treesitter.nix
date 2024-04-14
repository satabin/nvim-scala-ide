{ pkgs, ... }: {
  plugins.treesitter = {
    enable = true;

    ensureInstalled = [
      "hocon"
      "java"
      "json"
      "markdown"
      "scala"
    ];

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter-parsers; [
      hocon
      java
      json
      markdown
      scala
    ];
  };
}
