searching
recurse: aBlock
	"See superclass version."

	aBlock value: self.

	super recurse: aBlock.