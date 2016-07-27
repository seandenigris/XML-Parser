tests
testvalidsa097xml
	"Source file: xmltest/valid/sa/097.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa097xml
				documentURI: 'valid/sa/097.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions