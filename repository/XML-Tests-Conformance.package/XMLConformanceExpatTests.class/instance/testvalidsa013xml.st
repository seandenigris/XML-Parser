tests
testvalidsa013xml
	"Source file: xmltest/valid/sa/013.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa013xml
				documentURI: 'valid/sa/013.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions