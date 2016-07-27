tests
testp61pass1xml
	"Source file: oasis/p61pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep61pass1xml
				documentURI: 'p61pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions