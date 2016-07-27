tests
testp28pass4xml
	"Source file: oasis/p28pass4.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep28pass4xml
				documentURI: 'p28pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions