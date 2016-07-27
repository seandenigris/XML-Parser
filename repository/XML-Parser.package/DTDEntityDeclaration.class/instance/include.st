behaviors
include
	"Return my expanded value."
	^ value ifNil: [XMLWarning signal: 'XML undefined entity ' , name printString]