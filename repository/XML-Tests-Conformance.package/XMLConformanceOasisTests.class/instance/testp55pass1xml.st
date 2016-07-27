tests
testp55pass1xml
	"Source file: oasis/p55pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep55pass1xml
				documentURI: 'p55pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions