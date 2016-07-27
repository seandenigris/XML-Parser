tests
testp39pass1xml
	"Source file: oasis/p39pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep39pass1xml
				documentURI: 'p39pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions