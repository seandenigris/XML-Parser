tests
testp76pass1xml
	"Source file: oasis/p76pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep76pass1xml
				documentURI: 'p76pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions