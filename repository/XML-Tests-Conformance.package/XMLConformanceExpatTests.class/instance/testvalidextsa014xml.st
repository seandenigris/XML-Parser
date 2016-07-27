tests
testvalidextsa014xml
	"Source file: xmltest/valid/ext-sa/014.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa014xml
				documentURI: 'valid/ext-sa/014.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions