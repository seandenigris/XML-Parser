tests
testvalidsa075xml
	"Source file: xmltest/valid/sa/075.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa075xml
				documentURI: 'valid/sa/075.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions