tests
testvalidsa052xml
	"Source file: xmltest/valid/sa/052.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa052xml
				documentURI: 'valid/sa/052.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions