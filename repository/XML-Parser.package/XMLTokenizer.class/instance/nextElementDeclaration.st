tokenizing - dtd
nextElementDeclaration
	| name nextChar contentModel |

	self
		expectNextAll: 'LEMENT';
		skipSeparatorsReplacingParameterEntities.

	name := self nextName.
	contentModel := streamWriter writeWith: [:writeStream |
		[self skipSeparatorsReplacingParameterEntities.
		(streamReader atEnd or: [(nextChar := streamReader peek) == $>])]
			whileFalse: [
				nextChar == $#
					ifTrue: [writeStream nextPutAll: (self expectNextAll: '#PCDATA')]
					ifFalse: [
						(nextChar == $, or: [ValueListChars includes: nextChar])
							ifTrue: [writeStream nextPut: streamReader next]
							ifFalse: [self nextNameOn: writeStream]].
				(UnaryOperatorChars includes: streamReader peek)
					ifTrue: [writeStream nextPut: streamReader next]].
		writeStream contents].

	self
		skipSeparatorsReplacingParameterEntities;
		expectTerminator: $>.

	driver
		handleElementDeclaration: name
		contentModel: contentModel