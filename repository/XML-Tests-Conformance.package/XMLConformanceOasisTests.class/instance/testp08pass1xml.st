tests
testp08pass1xml
	"Source file: oasis/p08pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep08pass1xml
				documentURI: 'p08pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions