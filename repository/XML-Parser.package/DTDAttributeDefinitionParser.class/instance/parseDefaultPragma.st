parsing
parseDefaultPragma
	^ (defaultDeclaration beginsWith: '#')
		ifTrue: [
			(defaultDeclaration allButFirst
				copyUpTo: Character space) asSymbol]
		ifFalse: [nil].