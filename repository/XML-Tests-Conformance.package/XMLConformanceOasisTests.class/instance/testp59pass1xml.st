tests
testp59pass1xml
	"Source file: oasis/p59pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep59pass1xml
				documentURI: 'p59pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions