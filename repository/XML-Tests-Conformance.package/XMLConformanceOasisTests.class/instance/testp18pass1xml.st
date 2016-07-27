tests
testp18pass1xml
	"Source file: oasis/p18pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep18pass1xml
				documentURI: 'p18pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions