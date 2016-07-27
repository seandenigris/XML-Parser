tokenizing dtd
nextSubsetMarkupToken
	streamReader peek == $<
		ifFalse: [^ self skipNonDeclarationOrEntity].
	super nextSubsetMarkupToken.