tokenizing - dtd
nextSubsetMarkupToken
	self expectNext: $<.
	streamReader peek == $?
		ifTrue: [^ self nextPIOrXMLDecl]
		ifFalse: [
			context isInExternalSubsetTextDeclaration
				ifTrue: [context enterExternalSubset]].

	self expectNext: $!.
	streamReader peek == $-
		ifTrue: [^ self nextComment].

	(streamReader peek == $[)
		ifTrue: [
			(context isInExternalSubset
				or: [self hasActiveExternalEntity])
				ifTrue: [^ self nextConditionalSection].
			self errorInternalSubsetIncludeOrIgnoreSection].

	self nextSubsetDeclaration.