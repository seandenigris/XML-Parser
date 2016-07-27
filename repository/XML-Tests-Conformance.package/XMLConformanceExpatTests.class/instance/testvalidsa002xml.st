tests
testvalidsa002xml
	"Source file: xmltest/valid/sa/002.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa002xml
				documentURI: 'valid/sa/002.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions