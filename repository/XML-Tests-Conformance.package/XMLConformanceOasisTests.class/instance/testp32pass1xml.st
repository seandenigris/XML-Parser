tests
testp32pass1xml
	"Source file: oasis/p32pass1.xml"

	(self isSkippableTest: #testp32pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep32pass1xml
				documentURI: 'p32pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions