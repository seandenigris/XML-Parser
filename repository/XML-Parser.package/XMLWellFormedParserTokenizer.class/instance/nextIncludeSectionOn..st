tokenizing - dtd
nextIncludeSectionOn: aWriteStream
	| isOpen  |

	self expectNextAll: 'NCLUDE'.
	streamReader skipSeparators.
	self expectNext: $[.

	isOpen := true.
	[isOpen and: [streamReader atEnd not]]
		whileTrue: [
			(streamReader nextMatchAll: '<![')
				ifTrue: [self nextConditionalSectionOn: aWriteStream]
				ifFalse: [
					(streamReader nextMatchAll: ']]>')
						ifTrue: [isOpen := false]
						ifFalse: [aWriteStream nextPut: streamReader next]]].

	isOpen
		ifTrue: [self errorExpectedSectionTerminator].