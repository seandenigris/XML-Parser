tests
testvalidnotsa009xml
	"Source file: xmltest/valid/not-sa/009.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa009xml
				documentURI: 'valid/not-sa/009.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions