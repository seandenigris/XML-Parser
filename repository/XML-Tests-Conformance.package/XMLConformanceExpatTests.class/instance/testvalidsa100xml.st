tests
testvalidsa100xml
	"Source file: xmltest/valid/sa/100.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa100xml
				documentURI: 'valid/sa/100.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions