tests
testp32pass2xml
	"Source file: oasis/p32pass2.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep32pass2xml
				documentURI: 'p32pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions