tests
testp03pass1xml
	"Source file: oasis/p03pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep03pass1xml
				documentURI: 'p03pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions