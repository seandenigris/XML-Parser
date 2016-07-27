tests
testp28pass2xml
	"Source file: oasis/p28pass2.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep28pass2xml
				documentURI: 'p28pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions