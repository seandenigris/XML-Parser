tokenizing - dtd
nextContentModelUnaryOperatorOn: aStream
	| nextChar |

	((nextChar := streamReader peek) notNil
		and: [UnaryOperatorChars includes: nextChar])
		ifTrue: [aStream nextPut: streamReader next]