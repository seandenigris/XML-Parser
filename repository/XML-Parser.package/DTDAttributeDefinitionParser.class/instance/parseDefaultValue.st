parsing
parseDefaultValue
	| quote start end |

	quote := nil.
	defaultDeclaration
		doWithIndex: [:each :i |
			(quote isNil and: [each == $" or: [each == $']])
				ifTrue: [
					quote := each.
					start := i].
			(quote notNil and: [each == quote])
				ifTrue: [end := i]].
	^ (start notNil and: [end notNil])
		ifTrue: [defaultDeclaration copyFrom: start + 1 to: end - 1]
		ifFalse: ['']