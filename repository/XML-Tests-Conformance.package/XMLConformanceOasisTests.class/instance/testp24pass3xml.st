tests
testp24pass3xml
	"Source file: oasis/p24pass3.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep24pass3xml
				documentURI: 'p24pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions