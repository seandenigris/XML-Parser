tests
testvalidsa070xml
	"Source file: xmltest/valid/sa/070.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa070xml
				documentURI: 'valid/sa/070.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions