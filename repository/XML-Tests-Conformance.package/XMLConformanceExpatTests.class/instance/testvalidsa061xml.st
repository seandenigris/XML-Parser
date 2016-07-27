tests
testvalidsa061xml
	"Source file: xmltest/valid/sa/061.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa061xml
				documentURI: 'valid/sa/061.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions