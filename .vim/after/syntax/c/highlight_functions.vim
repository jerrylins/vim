" Highlight Function names.  From
" http://stackoverflow.com/questions/736701/class-function-names-highlighting-in-vim/773392#773392

syn match    cCustomParen    "(" contains=cParen contains=cCppParen
syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen

hi def link cCustomFunc  Function

hi Function term=bold gui=bold
