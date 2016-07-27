testing
isSkipping
	"allow skipping of certain tests by default"
	^ IsSkipping ifNil: [IsSkipping := true]