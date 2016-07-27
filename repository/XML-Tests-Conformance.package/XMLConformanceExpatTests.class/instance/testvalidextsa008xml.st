tests
testvalidextsa008xml
	"Source file: xmltest/valid/ext-sa/008.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa008xml
				documentURI: 'valid/ext-sa/008.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions