tests
testp44pass1xml
	"Source file: oasis/p44pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep44pass1xml
				documentURI: 'p44pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions