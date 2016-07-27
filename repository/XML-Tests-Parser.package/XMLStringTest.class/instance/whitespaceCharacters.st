accessing
whitespaceCharacters
	"for portability"
	^ String withAll:
		(((0 to: 255) collect: [:each | each asCharacter])
			select: [:each | each xmlParserIsWhitespace])