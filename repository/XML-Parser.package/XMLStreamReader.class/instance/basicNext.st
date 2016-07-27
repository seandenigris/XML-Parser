accessing
basicNext
	"Returns next character in the stream after performing line endings normalization"
	| char |
	
	((char := stream next) == CarriageReturn)
		ifTrue: [
			char := LineFeed.
			(stream peek == LineFeed)
				ifTrue: [stream next]].
	^ char.