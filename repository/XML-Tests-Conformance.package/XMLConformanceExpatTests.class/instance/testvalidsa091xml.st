tests
testvalidsa091xml
	"Source file: xmltest/valid/sa/091.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa091xml
				documentURI: 'valid/sa/091.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions