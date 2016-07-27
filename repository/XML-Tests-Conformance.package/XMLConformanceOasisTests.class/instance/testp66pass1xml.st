tests
testp66pass1xml
	"Source file: oasis/p66pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep66pass1xml
				documentURI: 'p66pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions