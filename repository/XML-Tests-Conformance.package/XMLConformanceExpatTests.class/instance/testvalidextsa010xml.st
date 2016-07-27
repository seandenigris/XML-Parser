tests
testvalidextsa010xml
	"Source file: xmltest/valid/ext-sa/010.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa010xml
				documentURI: 'valid/ext-sa/010.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions