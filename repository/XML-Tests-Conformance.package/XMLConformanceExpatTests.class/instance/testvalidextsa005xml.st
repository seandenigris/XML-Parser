tests
testvalidextsa005xml
	"Source file: xmltest/valid/ext-sa/005.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa005xml
				documentURI: 'valid/ext-sa/005.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions