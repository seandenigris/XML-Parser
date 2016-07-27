accessing
next
	peekChar
		ifNil: [^ streamConverter nextFromStream: self]
		ifNotNil: [:nextChar |
			peekChar := nil.
			^ nextChar]