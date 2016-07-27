tests
testp25pass2xml
	"Source file: oasis/p25pass2.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep25pass2xml
				documentURI: 'p25pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions