tests
testvalidsa071xml
	"Source file: xmltest/valid/sa/071.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa071xml
				documentURI: 'valid/sa/071.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions