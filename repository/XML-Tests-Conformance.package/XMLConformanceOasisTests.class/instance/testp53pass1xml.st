tests
testp53pass1xml
	"Source file: oasis/p53pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep53pass1xml
				documentURI: 'p53pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions