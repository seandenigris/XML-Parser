streaming
basicNext
	"Returns next character in the stream after performing line endings normalization"
	| char nextChar |
	
	char := stream next.
	char == Character cr 
		ifTrue: [
			char := Character lf.
			nextChar := stream next.
			(nextChar = Character lf or: [nextChar == nil]) ifFalse: [self pushBack: nextChar asString]].
	^ char