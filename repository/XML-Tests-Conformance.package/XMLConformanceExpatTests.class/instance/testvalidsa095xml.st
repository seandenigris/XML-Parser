tests
testvalidsa095xml
	"Source file: xmltest/valid/sa/095.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa095xml
				documentURI: 'valid/sa/095.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions