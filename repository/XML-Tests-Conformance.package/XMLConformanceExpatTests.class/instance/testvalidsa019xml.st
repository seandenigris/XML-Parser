tests
testvalidsa019xml
	"Source file: xmltest/valid/sa/019.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa019xml
				documentURI: 'valid/sa/019.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions