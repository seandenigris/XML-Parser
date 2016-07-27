tests
testvalidnotsa023xml
	"Source file: xmltest/valid/not-sa/023.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa023xml
				documentURI: 'valid/not-sa/023.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions