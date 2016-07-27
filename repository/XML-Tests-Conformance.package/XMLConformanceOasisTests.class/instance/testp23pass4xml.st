tests
testp23pass4xml
	"Source file: oasis/p23pass4.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep23pass4xml
				documentURI: 'p23pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions