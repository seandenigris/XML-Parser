tests
testvalidextsa012xml
	"Source file: xmltest/valid/ext-sa/012.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa012xml
				documentURI: 'valid/ext-sa/012.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions