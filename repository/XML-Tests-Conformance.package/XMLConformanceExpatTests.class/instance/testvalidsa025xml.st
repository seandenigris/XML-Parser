tests
testvalidsa025xml
	"Source file: xmltest/valid/sa/025.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa025xml
				documentURI: 'valid/sa/025.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions