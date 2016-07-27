searching
recurse: aBlock
	"See superclass version."

	aBlock valueWithPossibleArgument: self.

	super recurse: aBlock.