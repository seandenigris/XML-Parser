tests
testp31pass2xml
	"Source file: oasis/p31pass2.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep31pass2xml
				documentURI: 'p31pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions