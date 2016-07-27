tests
testp68pass1xml
	"Source file: oasis/p68pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep68pass1xml
				documentURI: 'p68pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions