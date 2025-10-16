" Vim color file
" black
" Created by  with ThemeCreator (https://github.com/mswift42/themecreator)

hi clear

if exists("syntax on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "black"

let s:black0="#000000"
let s:black1="#1a1a1a"
let s:gray0="#262626"
let s:gray1="#323232"
let s:gray2="#3e3e3e"
let s:gray3="#4a4a4a"
let s:gray4="#5c5c5c"
let s:gray5="#707070"
let s:gray6="#8a8a8a"

let s:white0="#ffffff"
let s:white1="#a6a6a6"
let s:white2="#cfcfcf"

let s:red="#ff0000"
let s:green="#00ff00"
let s:blue="#0000ff"
let s:yellow="#ffff00"
let s:purple="#ff00ff"
let s:cyan="#ff00ff"

" Define reusable colorvariables.
let s:bg1=s:black0
let s:bg2=s:black1
let s:bg3=s:gray0
let s:bg4=s:gray1

let s:fg1="#c4c4c4"
let s:fg2="#b3b3b3"
let s:fg3="#a2a2a2"
let s:fg4="#919191"

let s:builtin="#ff0000"
let s:comment=s:gray2
let s:const=s:red "affects mini.files dir color
let s:func=s:gray5
let s:keyword=s:gray4 "async, function, import
let s:str=s:white2
let s:type=s:red "class name, return types, json keys
let s:values=s:red
let s:var=s:red
let s:warning2=s:yellow
let s:warning=s:red

exe 'hi ColorColumn guibg='s:bg1
exe 'hi Cursor guifg='s:bg1 ' guibg='s:fg1
exe 'hi CursorColumn guibg='s:bg2
exe 'hi CursorLine guibg='s:bg2
exe 'hi CursorLineNr guifg='s:fg1 ' guibg='s:bg2
exe 'hi CursorLineNr guifg='s:black0 ' guibg='s:red
exe 'hi Directory guifg='s:const
exe 'hi FoldColumn guifg='s:comment ' guibg='s:bg2
exe 'hi Folded guifg='s:fg4 ' guibg='s:bg1
exe 'hi IncSearch guifg='s:bg1 ' guibg='s:keyword
exe 'hi LineNr guifg='s:fg2 ' guibg='s:bg1
exe 'hi MatchParen guifg='s:warning2 ' gui=underline'
exe 'hi Normal guifg='s:fg1 ' guibg='s:bg1
exe 'hi Pmenu guifg='s:fg1 ' guibg='s:bg2
exe 'hi PmenuSel guibg='s:bg3
exe 'hi Search gui=underline'
exe 'hi SignColumn guifg='s:comment ' guibg='s:bg1
exe 'hi StatusLine guifg='s:fg2 ' guibg='s:bg3 ' gui=bold'
exe 'hi VertSplit guifg='s:fg3 ' guibg='s:bg3
exe 'hi WildMenu guifg='s:str ' guibg='s:bg1

exe 'hi Boolean guifg='s:values
exe 'hi Character guifg='s:values
exe 'hi Comment guifg='s:comment
exe 'hi Conditional guifg='s:keyword
exe 'hi Constant guifg='s:const
exe 'hi Define guifg='s:keyword
exe 'hi DiffAdd guifg=#fafafa guibg=#123d0f gui=bold'
exe 'hi DiffChange guibg=#151b3c guifg=#fafafa'
exe 'hi DiffDelete guibg='s:bg2
exe 'hi DiffText guifg=#ffffff guibg=#ff0000 gui=bold'
exe 'hi ErrorMsg guifg='s:warning ' guibg='s:bg2 ' gui=bold'
exe 'hi Float guifg='s:const
exe 'hi Function guifg='s:func
exe 'hi Identifier guifg='s:type ' gui=NONE'
exe 'hi Keyword guifg='s:keyword ' gui=bold'
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:bg4 ' guibg='s:bg2
exe 'hi Number guifg='s:values
exe 'hi Operator guifg='s:keyword
exe 'hi PreProc guifg='s:keyword
exe 'hi Special guifg='s:fg1
exe 'hi SpecialKey guifg='s:fg2 ' guibg='s:bg2
exe 'hi Statement guifg='s:keyword
exe 'hi StorageClass guifg='s:type' gui=italic'
exe 'hi String guifg='s:str
exe 'hi Tag guifg='s:keyword
exe 'hi Title guifg='s:fg1 ' gui=bold'
exe 'hi Todo guibg='s:bg1
exe 'hi Todo guifg='s:fg2 ' gui=inverse,bold'
exe 'hi Type guifg='s:type
exe 'hi Underlined  gui=underline'
exe 'hi WarningMsg guifg='s:fg1 'guibg='s:warning2

" Neovim Terminal Mode
let g:terminal_color_0 = s:bg1
let g:terminal_color_1 = s:warning
let g:terminal_color_2 = s:keyword
let g:terminal_color_3 = s:bg4
let g:terminal_color_4 = s:func
let g:terminal_color_5 = s:builtin
let g:terminal_color_6 = s:fg3
let g:terminal_color_7 = s:str
let g:terminal_color_8 = s:bg2
let g:terminal_color_9 = s:warning2
let g:terminal_color_10 = s:fg2
let g:terminal_color_11 = s:var
let g:terminal_color_12 = s:type
let g:terminal_color_13 = s:const
let g:terminal_color_14 = s:fg4
let g:terminal_color_15 = s:comment

" Ruby Highlighting
exe 'hi rubyAttribute guifg='s:builtin
exe 'hi rubyClass guifg='s:keyword' gui=bold'
exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
exe 'hi rubyInstanceVariable guifg='s:var
exe 'hi rubyKeyword guifg='s:keyword
exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
exe 'hi rubyLocalVariableOrMethod guifg='s:var
exe 'hi rubyNumber guifg='s:const

" Python Highlighting
exe 'hi pythonBuiltinFunc guifg='s:builtin

" Go Highlighting
exe 'hi goBuiltins guifg='s:builtin
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints      = 1
let g:go_highlight_chan_whitespace_error  = 1
let g:go_highlight_extra_types            = 1
let g:go_highlight_fields                 = 1
let g:go_highlight_format_strings         = 1
let g:go_highlight_function_calls         = 1
let g:go_highlight_function_parameters    = 1
let g:go_highlight_functions              = 1
let g:go_highlight_generate_tags          = 1
let g:go_highlight_operators              = 1
let g:go_highlight_space_tab_error        = 1
let g:go_highlight_string_spellcheck      = 1
let g:go_highlight_types                  = 1
let g:go_highlight_variable_assignments   = 1
let g:go_highlight_variable_declarations  = 1

" Javascript Highlighting
exe 'hi jsAssignmentExps guifg='s:var
exe 'hi jsBuiltins guifg='s:builtin
exe 'hi jsFunction guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects guifg='s:type

" Html Highlighting
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlSpecialTagName guifg='s:keyword
exe 'hi htmlStatement guifg='s:keyword

" Markdown Highlighting
exe 'hi mkdCode guifg='s:builtin


