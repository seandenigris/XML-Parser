tests
testvalidsa065xml
	"Source file: xmltest/valid/sa/065.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa065xml
				documentURI: 'valid/sa/065.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions