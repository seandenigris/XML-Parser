tests
testvalidsa115xml
	"Source file: xmltest/valid/sa/115.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa115xml
				documentURI: 'valid/sa/115.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions