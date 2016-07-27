tests
testvalidnotsa015xml
	"Source file: xmltest/valid/not-sa/015.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa015xml
				documentURI: 'valid/not-sa/015.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions