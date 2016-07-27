accessing
next
	^ printStream
		ifNil: [readStream next]
		ifNotNil: [| nextChar |
			nextChar := readStream next.
			printStream nextPut: nextChar.
			^ nextChar]