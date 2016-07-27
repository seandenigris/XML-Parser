tests
testp40pass2xml
	"Source file: oasis/p40pass2.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep40pass2xml
				documentURI: 'p40pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions