scriptencoding utf-8

if exists('b:current_syntax')
    finish
endif

syntax match c2hsGet "->"
syntax match c2hsSym "^"
syntax keyword c2hsKw enum as const pointer newtype nocode import type get set call unsafe pure fun
syntax match c2hsCase "\v\{[a-zA-Z]*\}"

highlight link c2hsSym Special
highlight link c2hsGet Special
highlight link c2hsKw Keyword
highlight link c2hsCase Underlined

let b:current_syntax = 'c2hs'
