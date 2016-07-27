tests
testp31pass1xml
	"Source file: oasis/p31pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep31pass1xml
				documentURI: 'p31pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions