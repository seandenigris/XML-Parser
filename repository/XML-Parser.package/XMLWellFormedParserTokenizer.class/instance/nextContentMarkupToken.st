tokenizing
nextContentMarkupToken
	streamReader peek == $?
		ifTrue: [^ self nextPIOrXMLDeclaration].
	streamReader peek == $!
		ifTrue: [
			streamReader next.
			streamReader peek == $-
				ifTrue: [^ self nextComment].
			^ self nextCDataSection].
	self nextTag.