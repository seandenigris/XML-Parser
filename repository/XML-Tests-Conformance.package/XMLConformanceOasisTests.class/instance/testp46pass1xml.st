tests
testp46pass1xml
	"Source file: oasis/p46pass1.xml"

	(self isSkippableTest: #testp46pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep46pass1xml
				documentURI: 'p46pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions