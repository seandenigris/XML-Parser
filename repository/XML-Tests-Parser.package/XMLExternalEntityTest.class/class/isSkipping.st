testing
isSkipping
	"HTTP/file tests are skipped by default"
	^ IsSkipping ifNil: [IsSkipping := true]