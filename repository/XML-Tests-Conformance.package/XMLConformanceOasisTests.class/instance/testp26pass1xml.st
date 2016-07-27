tests
testp26pass1xml
	"Source file: oasis/p26pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep26pass1xml
				documentURI: 'p26pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions