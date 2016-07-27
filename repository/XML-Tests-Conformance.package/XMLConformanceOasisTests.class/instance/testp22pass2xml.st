tests
testp22pass2xml
	"Source file: oasis/p22pass2.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep22pass2xml
				documentURI: 'p22pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions