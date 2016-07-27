tokenizing
nextPrologToken
	streamReader skipSeparators.
	streamReader atEnd
		ifTrue: [^ self].

	self expectNext: $<.
	streamReader peek == $?
		ifTrue: [^ self nextPIOrXMLDeclaration].
	streamReader peek == $!
		ifTrue: [
			streamReader next.
			streamReader peek == $-
				ifTrue: [^ self nextComment].
			^ self nextDoctypeDeclaration].
	self
		nextStartContent;
		nextTag.