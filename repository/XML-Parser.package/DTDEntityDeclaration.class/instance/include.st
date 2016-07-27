behaviors
include
	"Return my expanded value."
	^ value ifNil: [XMLParserWarning signal: 'XML undefined entity ' , name printString]