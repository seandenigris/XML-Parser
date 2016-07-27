tests
testp52pass1xml
	"Source file: oasis/p52pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep52pass1xml
				documentURI: 'p52pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions