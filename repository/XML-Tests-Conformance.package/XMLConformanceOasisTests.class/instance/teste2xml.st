tests
teste2xml
	"Source file: oasis/e2.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcee2xml
				documentURI: 'e2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions