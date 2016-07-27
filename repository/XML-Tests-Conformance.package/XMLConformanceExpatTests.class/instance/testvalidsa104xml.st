tests
testvalidsa104xml
	"Source file: xmltest/valid/sa/104.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa104xml
				documentURI: 'valid/sa/104.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions