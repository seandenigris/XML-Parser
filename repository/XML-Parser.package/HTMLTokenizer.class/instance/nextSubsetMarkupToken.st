tokenizing dtd
nextSubsetMarkupToken
	streamReader peek == $<
		ifTrue: [streamReader next]
		ifFalse: [^ self skipNonDeclarationOrEntity].

	self expectNext: $!.
	streamReader peek == $-
		ifTrue: [^ self nextComment].

	self skipDeclaration.