tests
testvalidsa006xml
	"Source file: xmltest/valid/sa/006.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa006xml
				documentURI: 'valid/sa/006.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions