-- vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#00FF00' })  -- Green
--git signs colors
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = '#00FF00' }) -- Green
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#FFFF00' }) -- Yellow
vim.api.nvim_set_hl(0, 'GitSignsChangedelete', { fg = '#FFA500' }) -- Orange
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#FF0000' }) -- Red
vim.api.nvim_set_hl(0, 'GitSignsTopdelete', { fg = '#FF4500' }) -- Orange-Red

-- Functions gui=underline
vim.cmd [[
highlight Function guifg=#d97706
]]

-- Visual selection color #050d45
-- #053AA6
vim.cmd [[
  highlight Visual guibg=#000000 guifg=NONE
]]

vim.cmd [[
  highlight @function.builtin gui=underline guifg=#d97706
]]

-- Numbers
vim.cmd [[
  highlight Number guifg=#408080
]]

-- Keywords
vim.cmd [[
  highlight Keyword gui=italic guifg=#9872A2
]]
vim.cmd [[
  highlight Conditional gui=italic guifg=#9872A2
]]
vim.cmd [[
  highlight Statement gui=italic guifg=#9872A2
]]
vim.cmd [[
  highlight Exception gui=italic guifg=#9872A2
]]
vim.cmd [[
  highlight Repeat gui=italic guifg=#9872A2
]]
-- Strings
vim.cmd [[
  highlight String gui=none guifg=#9AA83A
]]

-- Comments
vim.cmd [[
  highlight Comment guifg=#525252
]]

-- Types
vim.cmd [[
  highlight Type guifg=#931600
]]

-- Delimiters (e.g., brackets, braces, parentheses)
vim.cmd [[
  highlight Delimiter guifg=#931600
]]

--
vim.cmd [[
  highlight Delimiter guifg=#931600
]]

vim.cmd [[
  highlight Boolean guifg=#408080
]]

vim.cmd [[
  highlight Label guifg=#9CDCFE
]]

vim.cmd [[
  highlight Special guifg=#9CDCFE
]]
vim.cmd [[
  highlight StorageClass guifg=#676867
]]
-- vim.cmd [[
--   highlight Constant guifg=#C7444A
-- ]]
vim.cmd [[
  highlight Include guifg=#9872A2
]]

-- Set a custom background color
vim.api.nvim_set_hl(0, 'Normal', { bg = '#1e1e1e', fg = '#ffffff' })

--custom highlight group
-- Define a custom color for braces
vim.api.nvim_set_hl(0, 'Other', { fg = '#676867' }) -- Replace with your desired color
-- vim.api.nvim_set_hl(0, 'Identifier', { fg = '#9CDCFE' })  -- Replace with your desired color
vim.api.nvim_set_hl(0, 'Identifier', { fg = '#acdffa' }) -- Replace with your desired color
vim.api.nvim_set_hl(0, 'Argument', { fg = '#078448', italic = true }) -- Replace with your desired color
vim.api.nvim_set_hl(0, 'Interface', { fg = '#53b20b' }) -- Replace with your desired color
vim.api.nvim_set_hl(0, 'HtmlAttribute', { fg = '#D0B344' }) -- Replace with your desired color
vim.api.nvim_set_hl(0, 'HtmlTag', { fg = '#569CD6' }) -- Replace with your desired color
vim.api.nvim_set_hl(0, 'ScssString', { fg = '#C7444A' }) -- Replace with your desired color
vim.api.nvim_set_hl(0, 'BuiltIn', { fg = '#EE8BA8' }) -- Replace with your desired color
vim.api.nvim_set_hl(0, 'Escape', { fg = '#8080FF' }) -- Replace with your desired color
vim.api.nvim_set_hl(0, 'Class', { fg = '#931600' }) -- Replace with your desired color
-- vim.api.nvim_set_hl(0, 'Constant', { fg = '#13618A' })  -- Replace with your desired color

vim.api.nvim_set_hl(0, 'Type', { fg = '#4EC9B0' }) -- Replace with your desired color
vim.api.nvim_set_hl(0, 'Enum', { fg = '#FFC85A' }) -- Replace with your desired color

vim.api.nvim_set_hl(0, 'typescriptBraces', { link = 'Other' })
vim.api.nvim_set_hl(0, 'javaScriptBraces', { link = 'Other' })
vim.api.nvim_set_hl(0, 'javaScriptParens', { link = 'Other' })
vim.api.nvim_set_hl(0, 'javaScriptEmbed', { link = 'HtmlTag' })
vim.api.nvim_set_hl(0, 'typescriptAssign', { link = 'Other' })
vim.api.nvim_set_hl(0, 'typescriptObjectLiteral', { link = 'Other' })
vim.api.nvim_set_hl(0, 'typescriptObjectColon', { link = 'Other' })
vim.api.nvim_set_hl(0, 'typescriptBlock', { link = 'Other' })
vim.api.nvim_set_hl(0, '@lsp.typemod.variable.readonly.vue', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@lsp.type.parameter.vue', { link = 'Argument' })
vim.api.nvim_set_hl(0, 'htmlTagName', { link = 'HtmlTag' })
vim.api.nvim_set_hl(0, 'htmlH3', { link = 'Other' })
vim.api.nvim_set_hl(0, 'htmlTagN', { link = 'Other' })
-- vim.api.nvim_set_hl(0, 'HtmlTag', { link = 'Other'})
vim.api.nvim_set_hl(0, 'htmlEndTag', { link = 'Other' })
vim.api.nvim_set_hl(0, 'htmlArg', { link = 'HtmlAttribute' })
vim.api.nvim_set_hl(0, 'cssClassName', { link = 'HtmlAttribute' })
vim.api.nvim_set_hl(0, 'cssClassNameDot', { link = 'HtmlAttribute' })
vim.api.nvim_set_hl(0, 'cssBraces', { link = 'HtmlAttribute' })
vim.api.nvim_set_hl(0, 'cssNoise', { link = 'Number' })
vim.api.nvim_set_hl(0, '@lsp.type.interface', { link = 'Interface' })
vim.api.nvim_set_hl(0, '@tag.attribute.vue', { link = 'HtmlAttribute' })
vim.api.nvim_set_hl(0, '@punctuation.delimiter.typescript', { link = 'Other' })
vim.api.nvim_set_hl(0, '@punctuation.delimiter.javascript', { link = 'Other' })
vim.api.nvim_set_hl(0, '@tag.vue', { link = 'HtmlTag' })
vim.api.nvim_set_hl(0, '@keyword.return.typescript', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@keyword.function.javascript', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@keyword.return.javascript', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@keyword.operator.typescript', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@keyword.operator.javascript', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@punctuation.special.vue', { link = 'Other' })
vim.api.nvim_set_hl(0, '@punctuation.delimiter.scss', { link = 'Other' })

vim.api.nvim_set_hl(0, '@punctuation.delimiter.css', { link = 'Other' })
vim.api.nvim_set_hl(0, '@property.class.scss', { link = 'HtmlAttribute' })
vim.api.nvim_set_hl(0, '@property.class.css', { link = 'HtmlAttribute' })
vim.api.nvim_set_hl(0, '@property.scss', { link = 'Other' })
vim.api.nvim_set_hl(0, '@string.scss', { link = 'ScssString' })
vim.api.nvim_set_hl(0, '@string.css', { link = 'ScssString' })
vim.api.nvim_set_hl(0, '@type.css', { link = 'HtmlAttribute' })
vim.api.nvim_set_hl(0, '@tag.css', { link = 'HtmlTag' })
vim.api.nvim_set_hl(0, '@variable.css', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@property.css', { link = 'Other' })
vim.api.nvim_set_hl(0, '@operator.css', { link = 'Other' })
vim.api.nvim_set_hl(0, '@markup.link.label.vue', { link = 'None' })
vim.api.nvim_set_hl(0, '@string.plain.css', { link = 'ScssString' })

vim.api.nvim_set_hl(0, '@type.tag.scss', { link = 'HtmlAttribute' })
vim.api.nvim_set_hl(0, '@punctuation.bracket.scss', { link = 'Other' })
vim.api.nvim_set_hl(0, '@punctuation.bracket.css', { link = 'Other' })
vim.api.nvim_set_hl(0, '@number.css', { link = 'Number' })
vim.api.nvim_set_hl(0, '@punctuation.bracket.typescript', { link = 'Other' })
vim.api.nvim_set_hl(0, '@punctuation.bracket.javascript', { link = 'Other' })
vim.api.nvim_set_hl(0, '@operator.typescript', { link = 'Other' })
vim.api.nvim_set_hl(0, '@operator.javascript', { link = 'Other' })
vim.api.nvim_set_hl(0, '@operator.vue', { link = 'HtmlAttribute' })
vim.api.nvim_set_hl(0, '@tag.delimiter.vue', { link = 'Other' })
vim.api.nvim_set_hl(0, '@variable.scss', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@variable.javascript', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@string.special.url.vue', { link = 'String' })
vim.api.nvim_set_hl(0, '@constant.builtin.typescript', { link = 'Boolean' })
vim.api.nvim_set_hl(0, '@constant.builtin.javascript', { link = 'Boolean' })
vim.api.nvim_set_hl(0, '@type.builtin.typescript', { link = 'Type' })
vim.api.nvim_set_hl(0, '@variable.builtin.typescript', { link = 'ScssString' })
vim.api.nvim_set_hl(0, '@lsp.typemod.variable.defaultLibrary.typescript', { link = 'ScssString' })
vim.api.nvim_set_hl(0, '@lsp.typemod.class.defaultLibrary.vue', { link = 'BuiltIn' })

vim.api.nvim_set_hl(0, '@lsp.type.enum.vue', { link = 'Enum' })
vim.api.nvim_set_hl(0, '@lsp.type.enumMember.vue', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@lsp.type.enum.typescript', { link = 'Enum' })
vim.api.nvim_set_hl(0, '@lsp.type.enumMember.typescript', { link = 'Identifier' })

vim.api.nvim_set_hl(0, '@keyword.function.typescript', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@keyword.export.typescript', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@keyword.export.javascript', { link = 'Keyword' })
vim.api.nvim_set_hl(0, '@lsp.type.parameter.javascript', { link = 'Argument' })
vim.api.nvim_set_hl(0, '@lsp.type.parameter.typescript', { link = 'Argument' })
vim.api.nvim_set_hl(0, '@variable.parameter.typescript', { link = 'Argument' })
vim.api.nvim_set_hl(0, '@variable.parameter.javascript', { link = 'Argument' })
vim.api.nvim_set_hl(0, '@lsp.type.typeParameter.typescript', { link = 'Argument' })
vim.api.nvim_set_hl(0, '@string.escape.javascript', { link = 'Escape' })
vim.api.nvim_set_hl(0, '@string.escape.typescript', { link = 'Escape' })
vim.api.nvim_set_hl(0, '@variable.member.javascript', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@lsp.type.property.javascript', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@keyword.conditional.ternary.typescript', { link = 'Other' })
vim.api.nvim_set_hl(0, '@punctuation.special.typescript', { link = 'Other' })
vim.api.nvim_set_hl(0, '@punctuation.special.javascript', { link = 'HtmlTag' })

-- JSON
vim.api.nvim_set_hl(0, '@property.json', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@punctuation.delimiter.json', { fg = '#FFFFFF' })
vim.api.nvim_set_hl(0, '@punctuation.bracket.json', { fg = '#FFFFFF' })

vim.api.nvim_set_hl(0, '@constructor.typescript', { fg = '#9872A2', italic = true, underline = false })
vim.api.nvim_set_hl(0, '@lsp.type.class.typescript', { link = 'Class' })
vim.api.nvim_set_hl(0, '@constructor.javascript', { fg = '#9872A2', italic = true, underline = false })
vim.api.nvim_set_hl(0, '@lsp.type.class.javascript', { link = 'Class' })

vim.api.nvim_set_hl(0, '@variable.typescript', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@lsp.type.property.vue', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@variable.member.vue', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@variable.member.typescript', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@keyword.conditional.ternary.javascript', { link = 'Other' })
vim.api.nvim_set_hl(0, '@lsp.typemod.variable.readonly.javascript', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@lsp.typemod.variable.local.javascript', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@lsp.typemod.variable.local.vue', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@lsp.typemod.variable.defaultLibrary.vue', { link = 'Identifier' })
vim.api.nvim_set_hl(0, '@lsp.typemod.variable.defaultLibrary.javascript', { link = 'BuiltIn' })
vim.api.nvim_set_hl(0, '@lsp.type.property.typescript', { link = 'Identifier' })

vim.api.nvim_set_hl(0, '@constant.typescript', { link = 'Identifier' })

-- vim.api.nvim_set_hl(0, '@lsp.typemod.variable.local.javascript', { link = 'Identifier'})
-- vim.api.nvim_set_hl(0, '@lsp.typemod.variable.readonly.javascript', { link = 'Constant'})
-- vim.api.nvim_set_hl(0, '@lsp.mod.readonly.javascript', { link = 'Constant'})

-- vim.api.nvim_set_hl(0, 'DirectiveHighlight', { fg = '#ff0000' })

--LUA LANGAUGE
vim.api.nvim_set_hl(0, '@variable.parameter.lua', { link = 'Argument' })
vim.api.nvim_set_hl(0, '@punctuation', { link = 'Other' })
vim.api.nvim_set_hl(0, '@operator.lua', { link = 'Other' })
vim.api.nvim_set_hl(0, '@constructor.lua', { link = 'Other' })

--VIM
vim.api.nvim_set_hl(0, '@operator.vim', { link = 'Other' })
