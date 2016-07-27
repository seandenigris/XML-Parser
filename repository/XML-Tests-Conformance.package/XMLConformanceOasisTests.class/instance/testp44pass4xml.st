tests
testp44pass4xml
	"Source file: oasis/p44pass4.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep44pass4xml
				documentURI: 'p44pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions