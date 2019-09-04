scriptencoding utf-8

if exists('b:current_syntax')
    finish
endif

syntax keyword c2hsKw enum as const
syntax match c2hsCase "\v\{[a-zA-Z]*\}"

highlight link c2hsKw Keyword
highlight link c2hsCase Underlined

let b:current_syntax = 'c2hs'
