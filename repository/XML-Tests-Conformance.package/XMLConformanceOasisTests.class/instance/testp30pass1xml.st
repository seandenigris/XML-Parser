tests
testp30pass1xml
	"Source file: oasis/p30pass1.xml"

	(self isSkippableTest: #testp30pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep30pass1xml
				documentURI: 'p30pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions