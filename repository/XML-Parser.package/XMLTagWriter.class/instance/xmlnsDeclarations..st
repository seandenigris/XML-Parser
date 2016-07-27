accessing
xmlnsDeclarations: aDictionaryOrArray
	aDictionaryOrArray associationsDo: [:each |
		(each key isEmptyOrNil or: [each key = 'xmlns'])
			ifTrue: [self xmlns: each value]
			ifFalse: [self xmlnsAt: each key put: each value]]