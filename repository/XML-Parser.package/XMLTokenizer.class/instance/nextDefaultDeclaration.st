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
								writeStream nextPutAll: self nextFixedValue]]]
			ifFalse: [writeStream nextPutAll: self nextFixedValue].
		self removeTrailingSpacesFrom: writeStream contents].