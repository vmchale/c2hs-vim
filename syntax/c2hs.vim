scriptencoding utf-8

if exists('b:current_syntax')
    finish
endif

syntax match c2hsTy "\v`[a-zA-Z0-9\(\) \>\-]*'"
syntax match c2hsSym "\^"
syntax match c2hsSym "*"
syntax match c2hsSym "-"
syntax match c2hsSym "%"
syntax match c2hsPtr "&"
syntax match c2hsGet "->"
syntax match c2hsSym "=>"
syntax keyword c2hsKw enum as const pointer newtype nocode import type get set call unsafe pure fun context nonGNU sizeof alignof define call offsetof class typedef default deriving in out omit variadic foreign finalizer stable
syntax match c2hsCase "\v\{[a-zA-Z]+\}"

highlight link c2hsTy Type
highlight link c2hsSym Special
highlight link c2hsPtr Keyword
highlight link c2hsGet Special
highlight link c2hsKw Keyword
highlight link c2hsCase Underlined

let b:current_syntax = 'c2hs'
