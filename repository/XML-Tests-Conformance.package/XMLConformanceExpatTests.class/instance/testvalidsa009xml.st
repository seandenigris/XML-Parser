tests
testvalidsa009xml
	"Source file: xmltest/valid/sa/009.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa009xml
				documentURI: 'valid/sa/009.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions