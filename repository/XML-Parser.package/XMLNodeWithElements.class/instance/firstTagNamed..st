searching
firstTagNamed: aSymbol 
	"Return the first encountered node with the specified tag. Pass the message on"

	| answer |

	self elementsDo: [:each | (answer := each firstTagNamed: aSymbol) ifNotNil: [^answer]].
	^nil