tests
testp16pass1xml
	"Source file: oasis/p16pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep16pass1xml
				documentURI: 'p16pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions