tests
testvalidextsa003xml
	"Source file: xmltest/valid/ext-sa/003.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa003xml
				documentURI: 'valid/ext-sa/003.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions