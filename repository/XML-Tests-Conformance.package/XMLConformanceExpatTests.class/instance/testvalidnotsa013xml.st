tests
testvalidnotsa013xml
	"Source file: xmltest/valid/not-sa/013.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa013xml
				documentURI: 'valid/not-sa/013.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions