tokenizing - dtd
nextAttributeDefaultPragma
	self skipSeparatorsReplacingParameterEntities.
	streamReader peek == $#
		ifFalse: [^ ''].
	streamReader next.
	^ streamWriter writeWith: [:writeStream |
		streamReader peek == $R
			ifTrue: [writeStream nextPutAll: (self expectNextAll: 'REQUIRED')]
			ifFalse: [
				streamReader peek == $I
					ifTrue: [writeStream nextPutAll: (self expectNextAll: 'IMPLIED')]
					ifFalse: [writeStream nextPutAll: (self expectNextAll: 'FIXED')]].
		writeStream contents].