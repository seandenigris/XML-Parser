tokenizing - dtd
nextMixedContentListOnWriteStreamFromEntity: aParameterEntity
	| hasElements |

	writeStream nextPutAll: (self expectNextAll: '#PCDATA').

	self skipSeparatorsInDeclaration.
	hasElements := streamReader peek == $|.

	self
		nextNameListOnWriteStream;
		checkNestingOfParameterEntity: aParameterEntity.

	streamReader peek == $*
		ifTrue: [writeStream nextPut: streamReader next]
		ifFalse: [
			hasElements
				ifTrue: [self errorExpectedLiteral: $*]].