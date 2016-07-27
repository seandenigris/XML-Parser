tokenizing - dtd
nextNmtokenOnWriteStream
	"matches the Nmtoken production"
	| nextChar |

	"nil understands isXMLNameChar so it does not need to be tested for"
	(nextChar := streamReader next) isXMLNameChar
		ifFalse: [self errorExpectedNmtoken].
	writeStream nextPut: nextChar.

	"nil understands isXMLNameChar so it does not need to be tested for"
	[(nextChar := streamReader peek) isXMLNameChar]
		whileTrue: [writeStream nextPut: streamReader next].