tests
testp29pass1xml
	"Source file: oasis/p29pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep29pass1xml
				documentURI: 'p29pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions