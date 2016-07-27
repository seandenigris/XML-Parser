tests
testvalidsa048xml
	"Source file: xmltest/valid/sa/048.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa048xml
				documentURI: 'valid/sa/048.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions