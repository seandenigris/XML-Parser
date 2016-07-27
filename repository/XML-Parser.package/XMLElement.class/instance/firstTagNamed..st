searching
firstTagNamed: aSymbol 
	"Return the first encountered node with the specified tag.
	If it is not the receiver, pass the message on"

	(self isNamed: aSymbol)
		ifTrue: [^self].
	^super firstTagNamed: aSymbol 