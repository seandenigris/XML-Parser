accessing
basicNext
	"Returns next character in the stream after performing line endings normalization"
	| nextChar |
	
	((nextChar := stream next) == CarriageReturn)
		ifTrue: [
			nextChar := LineFeed.
			(stream peek == LineFeed)
				ifTrue: [stream next]].
	^ nextChar.