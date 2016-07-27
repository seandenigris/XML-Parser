tokenizing
nextContentMarkupToken
	streamReader peek == $?
		ifTrue: [^ self nextPIOrXMLDecl].
	streamReader peek == $!
		ifTrue: [
			streamReader next.
			streamReader peek == $-
				ifTrue: [^ self nextComment].
			streamReader peek == $[
				ifTrue: [^ self nextCDataSection]].
	self nextTag.