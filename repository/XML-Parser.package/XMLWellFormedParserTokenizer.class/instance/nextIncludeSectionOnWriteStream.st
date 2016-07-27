tokenizing - dtd
nextIncludeSectionOnWriteStream
	| isOpen  |

	self expectNextAll: 'NCLUDE'.
	streamReader skipSeparators.
	self expectNext: $[.

	isOpen := true.
	[isOpen and: [streamReader atEnd not]]
		whileTrue: [
			(streamReader nextMatchAll: '<![')
				ifTrue: [self nextConditionalSectionOnWriteStream]
				ifFalse: [
					(streamReader nextMatchAll: ']]>')
						ifTrue: [isOpen := false]
						ifFalse: [writeStream nextPut: streamReader next]]].
	isOpen
		ifTrue: [self errorExpectedSectionTerminator].