tests
testp28pass1xml
	"Source file: oasis/p28pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep28pass1xml
				documentURI: 'p28pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions