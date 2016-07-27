testing
hasElements
	"Faster version for #recurse*: methods to avoid initializing the node list in leaf elements"
	^ nodes notNil and: [nodes hasElements]