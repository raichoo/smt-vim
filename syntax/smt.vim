if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword smtKeywords assert echo check-sat get-proof get-model declare-sort define-sort declare-const declare-fun declare-datatypes set-option forall exit
syn region smtString start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match smtSort "\<[A-Z][a-zA-Z0-9_']*\>"
syn match smtDelimiter  "[()]"
syn match smtComment ";.*$"
syn keyword smtBoolean true false
syn match smtLabel "\<:[a-zA-z]\S*\>"
syn match smtNumber "\<[1-9][0-9]*\>\|\<#x[0-9a-f]*\>\|\<#b[01]*\>"
syn match smtFloat "\<[0-9]\+\.[0-9]\+\([eE][-+]\=[0-9]\+\)\=\>"
syn match smtOperators "[!$%&\*\+/<=>\?@\\^|~]\+\|\<[_-]\>"
syn keyword smtStatements ite and or not iff distinct

highlight def link smtKeywords Include
highlight def link smtString String
highlight def link smtSort Type
highlight def link smtDelimiter Delimiter
highlight def link smtComment Comment
highlight def link smtBoolean Boolean
highlight def link smtLabel Identifier
highlight def link smtNumber Number
highlight def link smtFloat Number
highlight def link smtOperators Operator
highlight def link smtStatements Statement

let b:current_syntax = "smt"
