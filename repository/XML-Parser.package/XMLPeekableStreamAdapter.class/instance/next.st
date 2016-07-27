accessing
next
	| nextChar |

	peekChar
		ifNotNil: [
			nextChar := peekChar.
			peekChar := nil]
		ifNil: [
			nextChar := stream atEnd
				ifTrue: [nil]
				ifFalse: [stream next]].
	^ nextChar.