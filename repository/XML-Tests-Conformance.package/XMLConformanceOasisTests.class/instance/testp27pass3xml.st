tests
testp27pass3xml
	"Source file: oasis/p27pass3.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep27pass3xml
				documentURI: 'p27pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions