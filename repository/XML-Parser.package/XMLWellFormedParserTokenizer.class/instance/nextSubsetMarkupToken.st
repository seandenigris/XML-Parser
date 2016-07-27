tokenizing - dtd
nextSubsetMarkupToken
	self expectNext: $<.
	streamReader peek == $?
		ifTrue: [^ self nextPI].

	self expectNext: $!.
	streamReader peek == $-
		ifTrue: [^ self nextComment].

	(streamReader peek == $[)
		ifTrue: [
			self isInExternalSubsetOrExternallyDefinedEntity
				ifFalse: [self errorInternalSubsetConditionalSection].
			^ self nextConditionalSection].

	self nextSubsetDeclaration.