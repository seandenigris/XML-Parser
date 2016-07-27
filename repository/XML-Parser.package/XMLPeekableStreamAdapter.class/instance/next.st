accessing
next
	peekChar
		ifNotNil: [| nextChar |
			nextChar := peekChar.
			peekChar := nil.
			^ nextChar]
		ifNil: [
			^ stream atEnd
				ifTrue: [nil]
				ifFalse: [stream next]]