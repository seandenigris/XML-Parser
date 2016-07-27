testing
hasChildren
	"nil test and size check to avoid lazy initializing"
	^ nodes notNil
		and: [nodes size > 0]