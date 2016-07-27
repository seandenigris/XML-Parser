tests
testvalidsa039xml
	"Source file: xmltest/valid/sa/039.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa039xml
				documentURI: 'valid/sa/039.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions