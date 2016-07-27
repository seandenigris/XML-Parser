tests
testp45pass1xml
	"Source file: oasis/p45pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep45pass1xml
				documentURI: 'p45pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions