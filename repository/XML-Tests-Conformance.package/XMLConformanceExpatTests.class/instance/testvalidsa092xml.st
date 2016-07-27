tests
testvalidsa092xml
	"Source file: xmltest/valid/sa/092.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa092xml
				documentURI: 'valid/sa/092.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions