tests
testvalidnotsa025xml
	"Source file: xmltest/valid/not-sa/025.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa025xml
				documentURI: 'valid/not-sa/025.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions