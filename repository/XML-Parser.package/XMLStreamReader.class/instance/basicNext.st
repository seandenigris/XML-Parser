accessing
basicNext
	"Returns next character in the stream after performing line-endings normalization.
	Normalization does not occur across nested streams."
	| nextChar |
	
	((nextChar := stream next) == CarriageReturn)
		ifTrue: [
			nextChar := LineFeed.
			(stream peek == LineFeed)
				ifTrue: [stream next]].
	^ nextChar.