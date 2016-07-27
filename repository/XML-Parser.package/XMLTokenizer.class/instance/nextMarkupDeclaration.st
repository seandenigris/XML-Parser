tokenizing dtd
nextMarkupDeclaration
	| declType |
	declType := self nextLiteral.
	driver isValidating
		ifFalse: [^ self skipMarkupDeclaration].
	declType = 'ENTITY'
		ifTrue: [self nextEntityDeclaration]
		ifFalse: [self skipMarkupDeclaration]