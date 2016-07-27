tests
testp09pass1xml
	"Source file: oasis/p09pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep09pass1xml
				documentURI: 'p09pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions