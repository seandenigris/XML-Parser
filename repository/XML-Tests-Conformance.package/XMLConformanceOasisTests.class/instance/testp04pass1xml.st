tests
testp04pass1xml
	"Source file: oasis/p04pass1.xml"

	(self isSkippableTest: #testp04pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep04pass1xml
				documentURI: 'p04pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions