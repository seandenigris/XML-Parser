searching
tagsNamed: aString contentsDo: aBlock
	"Evaluate aBlock for all of the contents of the receiver.
	The receiver has no tag, so pass the message on"

	self tagsNamed: aString do: [:each | each contentsDo: aBlock]