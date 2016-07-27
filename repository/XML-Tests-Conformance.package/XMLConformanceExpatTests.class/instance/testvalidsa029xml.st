tests
testvalidsa029xml
	"Source file: xmltest/valid/sa/029.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa029xml
				documentURI: 'valid/sa/029.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions