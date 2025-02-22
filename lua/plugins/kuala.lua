return {
  'mistweaverco/kulala.nvim',
  keys = {
    {"<leader>kr", function() require('kulala').run() end, desc = "run kuala" },
    {"<leader>ka", function() require('kulala').run_all() end, desc = "run kuala all" },
    {"<leader>ki", function() require('kulala').inspect() end, desc = "kuala inspect " },
    {"<leader>kc", function() require('kulala').copy() end, desc = "kuala copy" },
    {"<leader>kf", function() require('kulala').from_curl() end, desc = "kuala import curl" },
  },
  config = function()
    require('kulala').setup({
      default_view = "headers_body",
      environment_scope = "g",
      contenttypes = {
        ["application/vnd.api+json"] = {
          ft = "json",
          formatter = { "jq", "." },
          pathresolver = require("kulala.parser.jsonpath").parse,
        },
      },
    })
  end
}
