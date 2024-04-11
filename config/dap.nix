let
  options = { noremap = true; silent = true; };
in
{
  plugins.dap = {
    enable = true;
    extensions.dap-ui.enable = true;
    extensions.dap-virtual-text.enable = true;

    configurations = {
      scala = [
        {
          type = "scala";
          request = "launch";
          name = "RunOrTest";
          metals = {
            runType = "runOrTestFile";
          };
        }
        {
          type = "scala";
          request = "launch";
          name = "Test Target";
          metals = {
            runType = "testTarget";
          };
        }
      ];
    };
  };

  plugins.cmp-dap.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>dc";
      lua = true;
      action = /* lua */ ''
        function()
          require("dap").continue()
        end
      '';
      options = options;
    }
    {
      mode = "n";
      key = "<leader>dr";
      lua = true;
      action = /* lua */ ''
        function()
          require("dap").repl.toggle()
        end
      '';
      options = options;
    }
    {
      mode = "n";
      key = "<leader>dK";
      lua = true;
      action = /* lua */ ''
        function()
          require("dap.ui.widgets").hover()
        end
      '';
      options = options;
    }
    {
      mode = "n";
      key = "<leader>dt";
      lua = true;
      action = /* lua */ ''
        function()
          require("dap").toggle_breakpoint()
        end
      '';
      options = options;
    }
    {
      mode = "n";
      key = "<leader>dso";
      lua = true;
      action = /* lua */ ''
        function()
          require("dap").step_over()
        end
      '';
      options = options;
    }
    {
      mode = "n";
      key = "<leader>dsi";
      lua = true;
      action = /* lua */ ''
        function()
          require("dap").step_into()
        end
      '';
      options = options;
    }
    {
      mode = "n";
      key = "<leader>dl";
      lua = true;
      action = /* lua */ ''
        function()
          require("dap").run_last()
        end
      '';
      options = options;
    }
  ];

  extraConfigLua = /* lua */ ''
    local dap = require('dap')
    local dapui = require('dapui')
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open('sidebar')
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close('sidebar')
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close('sidebar')
    end
  '';

}
