tests
testp10pass1xml
	"Source file: oasis/p10pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep10pass1xml
				documentURI: 'p10pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions