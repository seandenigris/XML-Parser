searching
tagsNamed: aName contentsDo: aBlock
	"Evaluate aBlock for all of the contents of the receiver.
	The receiver has no tag, so pass the message on"

	self deprecated: 'use "node tagsNamed: aName do: [:each | each stringNodes...]" instead'.

	self tagsNamed: aName do: [:each | each stringNodesDo: aBlock]