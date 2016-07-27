tokenizing - dtd
skipDeclaration
	[streamReader atEnd
		or: [streamReader peek == $>]]
		whileFalse: [
			streamReader atQuote
				ifTrue: [streamReader skipTo: streamReader next]
				ifFalse: [streamReader next]].

	streamReader atEnd
		ifFalse: [streamReader next].