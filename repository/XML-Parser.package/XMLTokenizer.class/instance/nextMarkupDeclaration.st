tokenizing dtd
nextMarkupDeclaration
	| declType |
	declType := self nextLiteral.
	self isValidating
		ifFalse: [^ self skipMarkupDeclaration].
	declType = 'ENTITY'
		ifTrue: [self nextEntityDeclaration]
		ifFalse: [self skipMarkupDeclaration]