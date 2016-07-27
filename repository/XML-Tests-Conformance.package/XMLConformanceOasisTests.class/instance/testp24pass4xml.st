tests
testp24pass4xml
	"Source file: oasis/p24pass4.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep24pass4xml
				documentURI: 'p24pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions