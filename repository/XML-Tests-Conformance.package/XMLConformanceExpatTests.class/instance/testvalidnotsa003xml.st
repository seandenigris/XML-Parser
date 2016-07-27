tests
testvalidnotsa003xml
	"Source file: xmltest/valid/not-sa/003.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa003xml
				documentURI: 'valid/not-sa/003.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions