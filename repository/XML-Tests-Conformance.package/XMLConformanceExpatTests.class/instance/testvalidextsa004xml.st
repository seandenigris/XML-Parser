tests
testvalidextsa004xml
	"Source file: xmltest/valid/ext-sa/004.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa004xml
				documentURI: 'valid/ext-sa/004.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions