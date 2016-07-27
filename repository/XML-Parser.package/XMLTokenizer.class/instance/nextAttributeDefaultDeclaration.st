tokenizing dtd
nextAttributeDefaultDeclaration
	| defaultDeclaration |

	self skipSeparatorsReplacingParameterEntities.
	streamWriter writeWith: [:writeStream |
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
								writeStream nextPutAll: self nextAttributeDefaultValue]]]
			ifFalse: [writeStream nextPutAll: self nextAttributeDefaultValue].

		defaultDeclaration := self removeTrailingSpacesFrom: writeStream contents].

	^ defaultDeclaration.