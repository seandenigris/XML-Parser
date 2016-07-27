tests
testp42pass1xml
	"Source file: oasis/p42pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep42pass1xml
				documentURI: 'p42pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions