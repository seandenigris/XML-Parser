tests
testvalidnotsa019xml
	"Source file: xmltest/valid/not-sa/019.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa019xml
				documentURI: 'valid/not-sa/019.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions