tests
testvalidsa087xml
	"Source file: xmltest/valid/sa/087.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa087xml
				documentURI: 'valid/sa/087.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions