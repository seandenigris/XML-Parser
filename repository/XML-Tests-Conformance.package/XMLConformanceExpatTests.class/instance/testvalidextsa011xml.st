tests
testvalidextsa011xml
	"Source file: xmltest/valid/ext-sa/011.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa011xml
				documentURI: 'valid/ext-sa/011.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions