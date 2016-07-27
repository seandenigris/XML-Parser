tokenizing - dtd
nextAttributeDefaultPragma
	self skipSeparatorsReplacingParameterEntities.
	streamReader peek == $#
		ifFalse: [^ ''].
	streamReader next.

	^ streamReader peek == $R
		ifTrue: [self expectNextAll: 'REQUIRED']
		ifFalse: [
			streamReader peek == $I
				ifTrue: [self expectNextAll: 'IMPLIED']
				ifFalse: [self expectNextAll: 'FIXED']].