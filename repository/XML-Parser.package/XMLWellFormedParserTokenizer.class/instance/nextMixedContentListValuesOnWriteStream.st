tokenizing - dtd
nextMixedContentListValuesOnWriteStream
	| hasElements |

	writeStream nextPutAll: (self expectNextAll: '#PCDATA').

	self skipSeparatorsReplacingParameterEntities.
	hasElements := streamReader peek == $|.

	self nextNameListValuesOnWriteStream.
	streamReader peek == $*
		ifTrue: [writeStream nextPut: streamReader next]
		ifFalse: [
			hasElements
				ifTrue: [self errorExpectedLiteral: $*]].