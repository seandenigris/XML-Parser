tokenizing dtd
nextSubsetMarkupToken
	streamReader peek == $<
		ifFalse: [^ self skipNonDeclarationOrEntity].

	streamReader next.
	streamReader peek == $?
		ifTrue: [^ self nextPIOrXMLDecl].

	self expectNext: $!.
	streamReader peek == $-
		ifTrue: [^ self nextComment].

	self nextSubsetDeclaration.