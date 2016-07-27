tests
testvalidextsa013xml
	"Source file: xmltest/valid/ext-sa/013.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa013xml
				documentURI: 'valid/ext-sa/013.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions