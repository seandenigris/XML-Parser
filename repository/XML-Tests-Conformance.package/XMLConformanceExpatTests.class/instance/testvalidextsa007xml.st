tests
testvalidextsa007xml
	"Source file: xmltest/valid/ext-sa/007.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa007xml
				documentURI: 'valid/ext-sa/007.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions