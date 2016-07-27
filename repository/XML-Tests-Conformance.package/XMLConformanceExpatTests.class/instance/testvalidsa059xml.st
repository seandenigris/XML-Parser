tests
testvalidsa059xml
	"Source file: xmltest/valid/sa/059.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa059xml
				documentURI: 'valid/sa/059.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions