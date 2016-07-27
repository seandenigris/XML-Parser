tests
testvalidsa040xml
	"Source file: xmltest/valid/sa/040.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa040xml
				documentURI: 'valid/sa/040.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions