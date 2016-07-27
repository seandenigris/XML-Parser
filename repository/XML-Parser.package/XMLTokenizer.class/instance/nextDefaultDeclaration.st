tokenizing dtd
nextDefaultDeclaration
	self skipSeparatorsReplacingParameterEntities.
	^ streamWriter writeWith: [:writeStream |
		streamReader peek == $#
			ifTrue: [
				writeStream nextPut: streamReader next.
				streamReader peek == $R
					ifTrue: [writeStream nextPutAll: (self expectNextAll: 'REQUIRED')]
					ifFalse: [
						streamReader peek == $I
							ifTrue: [writeStream nextPutAll: (self expectNextAll: 'IMPLIED')]
							ifFalse: [
								writeStream
									nextPutAll: (self expectNextAll: 'FIXED');
									space.
								self skipSeparatorsReplacingParameterEntities.
								writeStream nextPutAll: self nextDefaultValue]]]
			ifFalse: [writeStream nextPutAll: self nextDefaultValue].
		self removeTrailingSpacesFrom: writeStream contents].