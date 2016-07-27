tests
testp54pass1xml
	"Source file: oasis/p54pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep54pass1xml
				documentURI: 'p54pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions