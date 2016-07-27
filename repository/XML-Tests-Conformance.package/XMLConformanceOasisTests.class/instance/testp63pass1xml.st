tests
testp63pass1xml
	"Source file: oasis/p63pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep63pass1xml
				documentURI: 'p63pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions