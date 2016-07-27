tests
testvalidnotsa014xml
	"Source file: xmltest/valid/not-sa/014.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa014xml
				documentURI: 'valid/not-sa/014.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions