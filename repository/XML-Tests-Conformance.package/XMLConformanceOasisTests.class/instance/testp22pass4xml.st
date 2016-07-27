tests
testp22pass4xml
	"Source file: oasis/p22pass4.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep22pass4xml
				documentURI: 'p22pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions