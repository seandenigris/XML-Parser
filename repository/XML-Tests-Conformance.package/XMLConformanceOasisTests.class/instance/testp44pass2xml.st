tests
testp44pass2xml
	"Source file: oasis/p44pass2.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep44pass2xml
				documentURI: 'p44pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions