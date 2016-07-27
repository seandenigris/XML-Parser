tokenizing
nextContentMarkupToken
	streamReader peek == $?
		ifTrue: [^ self nextPIOrXMLDecl].
	streamReader peek == $!
		ifTrue: [
			streamReader next.
			^ streamReader peek == $-
				ifTrue: [self nextComment]
				ifFalse: [self nextCDataSection]].

	self nextTag.