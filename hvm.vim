" Clear existing syntax
syntax clear

" Define HVM3 syntax groups (non-comment rules first)
syntax match hvmVariable "[a-zA-Z_][a-zA-Z0-9_]*"     " Variables: x, foo_bar
syntax match hvmReference "@[a-zA-Z0-9_]\+"           " References: @fn
syntax match hvmEra "\*"                               " Erasure: *
syntax match hvmLambda "λ\|\\ "                       " Lambda: λ or \ (space after \)
syntax region hvmApp start="(" end=")" contains=ALL    " Application: (f x)
syntax match hvmSuper "&[A-Za-z0-9]\+"                " Superposition: &L
syntax match hvmDup "!"                                " Duplication: !
syntax match hvmConstructor "#[A-Za-z0-9]\+"          " Constructor: #Ctr
syntax region hvmMatch start="~" end="}" contains=ALL  " Match: ~ v { ... }
syntax match hvmNumber "\<\d\+\>"                     " Numbers: 123
syntax region hvmChar start="'" end="'" skip="\\'"     " Characters: 'a'
syntax match hvmOperator "[+\-*/=><&|:!]"             " Operators: +, -, =, etc.
syntax keyword hvmKeyword let in mat sup dup          " Keywords: from Core (let, in, mat, sup, dup)

" Comments last to override all else
syntax match hvmComment "//.*$"                        " Comments: // and everything after

" Link to highlight groups
highlight link hvmVariable Identifier
highlight link hvmReference Constant
highlight link hvmEra Special
highlight link hvmLambda Function
highlight link hvmApp Normal
highlight link hvmSuper Type
highlight link hvmDup Operator
highlight link hvmConstructor Structure
highlight link hvmMatch Statement
highlight link hvmNumber Number
highlight link hvmChar Character
highlight link hvmOperator Operator
highlight link hvmKeyword Keyword
highlight link hvmComment Comment

" Set syntax name
let b:current_syntax = "hvm"
