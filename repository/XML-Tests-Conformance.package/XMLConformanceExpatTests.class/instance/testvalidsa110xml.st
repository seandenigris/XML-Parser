tests
testvalidsa110xml
	"Source file: xmltest/valid/sa/110.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa110xml
				documentURI: 'valid/sa/110.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions