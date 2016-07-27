tests
testvalidsa004xml
	"Source file: xmltest/valid/sa/004.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa004xml
				documentURI: 'valid/sa/004.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions