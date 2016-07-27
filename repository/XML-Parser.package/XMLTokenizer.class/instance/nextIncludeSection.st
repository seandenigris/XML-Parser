tokenizing dtd
nextIncludeSection
	| isOpen includedContents |

	self expectNextAll: 'NCLUDE'.
	streamReader skipSeparators.
	self expectNext: $[.

	isOpen := true.
	includedContents := streamWriter writeWith: [:writeStream |
		[isOpen and: [streamReader atEnd not]]
			whileTrue: [
				(streamReader nextMatchAll: '<![')
					ifTrue: [writeStream nextPutAll: self nextConditionalSection]
					ifFalse: [
						(streamReader nextMatchAll: ']]>')
							ifTrue: [isOpen := false]
							ifFalse: [writeStream nextPut: streamReader next]]].
		writeStream contents].
	isOpen
		ifTrue: [self errorExpected: 'terminating ]]>'].

	^ includedContents.