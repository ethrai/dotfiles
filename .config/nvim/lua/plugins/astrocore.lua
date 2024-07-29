-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 2, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = false,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = true, -- sets vim.opt.wrap
        textwidth = 80, -- sets vim.opt.textwidth
        showtabline = 2, -- sets vim.opt.showtabline to 2
        colorcolumn = "80", -- sets vim.opt.colorcolumn to 80
        swapfile = false, -- disables swapfile
        backup = false, -- disables backup
        smoothscroll = true, -- enables smooth scrolling
        scrolloff = 8, -- sets scrolloff to 8 lines
        mouse = "", -- Disable mouse support
        -- Splitting behavior
        splitright = true, -- Split vertical window to the right
        -- Indentation and tab settings
        expandtab = true, -- Use spaces instead of tabs
        cindent = true, -- Enable C-style indentation
        smarttab = true, -- Insert appropriate number of spaces on tab
        smartindent = true, -- Smart autoindenting on new lines
        shiftwidth = 2, -- Number of spaces to use for each step of (auto)indent
        tabstop = 2, -- Number of spaces that a <Tab> in the file counts for

        termguicolors = true, -- Enable true color support
        cursorline = false, -- Highlight the current line

        -- Performance settings
        updatetime = 50, -- Faster completion (default is 4000ms)
      },

      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["<S-l>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["<S-h>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,

        -- Next and prev diagnostic
        ["ge"] = { function() vim.diagnostic.goto_next() end, desc = "Next diagnostic" },
        ["gE"] = { function() vim.diagnostic.goto_prev() end, desc = "Prev diagnostic" },
        ["]d"] = false,
        ["[d"] = false,
      },
    },
  },
}
