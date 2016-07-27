accessing
basicNext
	"Returns next character in the stream after performing line-endings normalization.
	Normalization does not occur across nested streams."
	| nextChar |
	
	stream atEnd ifTrue: [ ^ nil ].
	((nextChar := stream next) == CarriageReturn)
		ifTrue: [
			nextChar := LineFeed.
			(stream peek == LineFeed)
				ifTrue: [stream next]].
	^ nextChar.