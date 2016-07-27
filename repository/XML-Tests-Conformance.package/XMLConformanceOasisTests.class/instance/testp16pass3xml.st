tests
testp16pass3xml
	"Source file: oasis/p16pass3.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep16pass3xml
				documentURI: 'p16pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions