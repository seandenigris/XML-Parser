tokenizing - dtd
nextContentModelUnaryOperatorOnWriteStream
	| nextChar |

	((nextChar := streamReader peek) notNil
		and: [UnaryOperatorChars includes: nextChar])
		ifTrue: [writeStream nextPut: streamReader next]