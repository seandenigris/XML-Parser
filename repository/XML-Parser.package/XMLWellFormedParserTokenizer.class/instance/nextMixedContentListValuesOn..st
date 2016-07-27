tokenizing - dtd
nextMixedContentListValuesOn: aStream
	| hasElements |

	aStream nextPutAll: (self expectNextAll: '#PCDATA').

	self skipSeparatorsReplacingParameterEntities.
	hasElements := streamReader peek == $|.

	self nextNameListValuesOn: aStream.
	streamReader peek == $*
		ifTrue: [aStream nextPut: streamReader next]
		ifFalse: [
			hasElements
				ifTrue: [self errorExpectedLiteral: $*]].