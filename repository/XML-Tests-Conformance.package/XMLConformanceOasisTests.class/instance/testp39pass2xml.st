tests
testp39pass2xml
	"Source file: oasis/p39pass2.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep39pass2xml
				documentURI: 'p39pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions