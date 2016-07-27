testing
isEmpty
	"Used to avoid initializing #nodes unless necessary"
	^ nodes isNil or: [nodes isEmpty]