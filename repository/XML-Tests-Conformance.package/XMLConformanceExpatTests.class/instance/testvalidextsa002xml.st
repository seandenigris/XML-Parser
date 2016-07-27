tests
testvalidextsa002xml
	"Source file: xmltest/valid/ext-sa/002.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa002xml
				documentURI: 'valid/ext-sa/002.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions