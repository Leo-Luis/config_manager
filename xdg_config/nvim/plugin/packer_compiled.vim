" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/candy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/candy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/candy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/candy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/candy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim"
  },
  ["JavaScript-Indent"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/candy/.local/share/nvim/site/pack/packer/opt/JavaScript-Indent"
  },
  ["Vim-Jinja2-Syntax"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/Vim-Jinja2-Syntax"
  },
  ["ansible-vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/ansible-vim"
  },
  ["any-jump.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/any-jump.vim"
  },
  ["apyrori.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/apyrori.nvim"
  },
  ["architext.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/architext.nvim"
  },
  ["astronauta.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/astronauta.nvim"
  },
  ["bandaid.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/bandaid.nvim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["command_and_conquer.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/command_and_conquer.nvim"
  },
  ["committia.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/committia.vim"
  },
  ["complextras.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/complextras.nvim"
  },
  ["conf.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/conf.vim"
  },
  ["dial.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/dial.nvim"
  },
  ["edit_alternate.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/edit_alternate.vim"
  },
  ["exception.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/exception.vim"
  },
  ["express_line.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/express_line.nvim"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/far.vim"
  },
  firenvim = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/firenvim"
  },
  ["fold_search.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/fold_search.vim"
  },
  fzf = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/git-messenger.vim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  ["gruvbuddy.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/gruvbuddy.nvim"
  },
  ["gundo.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/gundo.vim"
  },
  ["haskell-vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/haskell-vim"
  },
  ["haunted.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/haunted.vim"
  },
  ["javascript-libraries-syntax.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/javascript-libraries-syntax.vim"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  ["lir.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/lir.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\14auto_fold\2\17auto_preview\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["manillua.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/manillua.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["neuron.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/neuron.vim"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nsync.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nsync.nvim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-dap-python"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-luadev"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-luadev"
  },
  ["nvim-terminal.lua"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-terminal.lua"
  },
  ["nvim-tetris"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-tetris"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim-web-nonicons"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/nvim-web-nonicons"
  },
  ["one-small-step-for-vimkind"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/one-small-step-for-vimkind"
  },
  ["overlength.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/overlength.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["pastery.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/pastery.vim"
  },
  playground = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["py_package.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/py_package.nvim"
  },
  ["pytest.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/pytest.vim"
  },
  ["rofl.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/rofl.nvim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/splitjoin.vim"
  },
  ["sql.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/sql.nvim"
  },
  ["standard.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/standard.vim"
  },
  ["tabline.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/tabline.vim"
  },
  tabular = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope-arecibo.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-arecibo.nvim"
  },
  ["telescope-async-sorter-test.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-async-sorter-test.nvim"
  },
  ["telescope-cheat.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-cheat.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-fzf-writer.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-fzf-writer.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-github.nvim"
  },
  ["telescope-packer.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-packer.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["train.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/train.vim"
  },
  ["tree-sitter-lua"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/tree-sitter-lua"
  },
  ["tree-sitter-sql"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/tree-sitter-sql"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/typescript-vim"
  },
  ["vader.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vader.vim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-boxdraw"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-boxdraw"
  },
  ["vim-characterize"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-characterize"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-godot"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-godot"
  },
  ["vim-inyoface"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-inyoface"
  },
  ["vim-javascript"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/opt/vim-javascript"
  },
  ["vim-javascript-syntax"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-javascript-syntax"
  },
  ["vim-json"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-json"
  },
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-jsx-typescript"
  },
  ["vim-liquid"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-liquid"
  },
  ["vim-mscgen"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-mscgen"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-protocol"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-protocol"
  },
  ["vim-ps1"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-ps1"
  },
  ["vim-qf"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-qf"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-scriptease"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-scriptease"
  },
  ["vim-searchindex"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-searchindex"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-syntax-extra"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-syntax-extra"
  },
  ["vim-textobj-python"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-textobj-python"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-toml"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/vista.vim"
  },
  ["wiki.vim"] = {
    loaded = true,
    path = "/home/candy/.local/share/nvim/site/pack/packer/start/wiki.vim"
  }
}

time("Defining packer_plugins", false)
-- Config for: lsp-trouble.nvim
time("Config for lsp-trouble.nvim", true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\14auto_fold\2\17auto_preview\1\nsetup\ftrouble\frequire\0", "config", "lsp-trouble.nvim")
time("Config for lsp-trouble.nvim", false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time("Defining lazy-load filetype autocommands", true)
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'JavaScript-Indent', 'vim-javascript'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'vim-javascript'}, { ft = "html" }, _G.packer_plugins)]]
time("Defining lazy-load filetype autocommands", false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time("Sourcing ftdetect script at: /home/candy/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/flow.vim", true)
vim.cmd [[source /home/candy/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/flow.vim]]
time("Sourcing ftdetect script at: /home/candy/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/flow.vim", false)
time("Sourcing ftdetect script at: /home/candy/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/javascript.vim", true)
vim.cmd [[source /home/candy/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/javascript.vim]]
time("Sourcing ftdetect script at: /home/candy/.local/share/nvim/site/pack/packer/opt/vim-javascript/ftdetect/javascript.vim", false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
