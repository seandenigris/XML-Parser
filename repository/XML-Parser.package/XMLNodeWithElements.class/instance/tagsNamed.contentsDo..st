searching
tagsNamed: aSymbol contentsDo: aBlock
	"Evaluate aBlock for all of the contents of the receiver.
	The receiver has no tag, so pass the message on"

	self recurse: [:each | each ifNamed: aSymbol do: [each contentsDo: aBlock]]