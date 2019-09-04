" store and remove current syntax value
let old_syntax = b:current_syntax
unlet b:current_syntax

syn include @c2hs syntax/c2hs.vim
unlet b:current_syntax

syn region c2hs matchgroup=c2hsBrackets start="{#" end="#}" contains=@c2hs

hi def link c2hsBrackets Comment

" restore current syntax value
let b:current_syntax = old_syntax
