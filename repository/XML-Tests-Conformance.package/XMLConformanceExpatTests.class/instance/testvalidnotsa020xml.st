tests
testvalidnotsa020xml
	"Source file: xmltest/valid/not-sa/020.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa020xml
				documentURI: 'valid/not-sa/020.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions