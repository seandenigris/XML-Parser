tokenizing dtd
nextSubsetDeclaration
	streamReader peek == $E
		ifTrue: [
			streamReader next.
			streamReader peek == $N
				ifTrue: [^ self nextEntityDeclaration]].
	self skipDeclaration.