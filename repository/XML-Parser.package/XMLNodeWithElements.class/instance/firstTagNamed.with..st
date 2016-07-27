searching
firstTagNamed: aSymbol with: aBlock
	"Return the first encountered node with the specified tag that
	allows the block to evaluate to true. Pass the message on"

	| answer |

	self elementsDo: [:each |
		(answer := each firstTagNamed: aSymbol with: aBlock) ifNotNil: [^answer]].
	^nil