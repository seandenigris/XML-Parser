tests
testp44pass3xml
	"Source file: oasis/p44pass3.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep44pass3xml
				documentURI: 'p44pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions