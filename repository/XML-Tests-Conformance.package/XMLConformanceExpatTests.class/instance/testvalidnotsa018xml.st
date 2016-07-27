tests
testvalidnotsa018xml
	"Source file: xmltest/valid/not-sa/018.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa018xml
				documentURI: 'valid/not-sa/018.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions