tests
testvalidextsa001xml
	"Source file: xmltest/valid/ext-sa/001.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa001xml
				documentURI: 'valid/ext-sa/001.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions