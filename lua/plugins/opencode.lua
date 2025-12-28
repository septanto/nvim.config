return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for ask()/select() and required for embedded terminal
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    -- If you keep configuration in a global, that's fine:
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- your options here (see lua/opencode/config.lua in the repo)
    }
    vim.o.autoread = true -- required for events.reload / auto_reload
  end,
  -- 👇 Declare keymaps here so Lazy can load on first use
    
{
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for ask()/select() UI and required for embedded terminal
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },

  config = function()
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- your options here (see lua/opencode/config.lua in the repo)
    }
    vim.o.autoread = true -- required if you rely on events/auto reload
  end,

  -- Leader-based keymaps; Lazy will load opencode.nvim on first use
  keys = {
    -- Core
    { "<leader>ot", function() require("opencode").toggle() end,
      mode = "n", desc = "Toggle opencode" },

    { "<leader>oA", function() require("opencode").ask() end,
      mode = "n", desc = "Ask opencode (empty prompt)" },

    -- Context-aware ask
    { "<leader>oa", function() require("opencode").ask("@cursor: ") end,
      mode = "n", desc = "Ask opencode about cursor context" },

    { "<leader>oa", function() require("opencode").ask("@selection: ") end,
      mode = "v", desc = "Ask opencode about selection" },

    -- Session & messages
    { "<leader>on", function() require("opencode").command("session.new") end,
      mode = "n", desc = "New opencode session" },

    { "<leader>oy", function() require("opencode").command("messages.copy") end,
      mode = "n", desc = "Copy last opencode response" },

    -- Scroll inside the opencode message view (when focused)
    { "<S-C-u>", function() require("opencode").command("session.half.page.up") end,
      mode = "n", desc = "opencode half page up" },

    { "<S-C-d>", function() require("opencode").command("session.half.page.down") end,
      mode = "n", desc = "opencode half page down" },
  },

  },
}

