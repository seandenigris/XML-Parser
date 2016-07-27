tests
testp05pass1xml
	"Source file: oasis/p05pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep05pass1xml
				documentURI: 'p05pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions