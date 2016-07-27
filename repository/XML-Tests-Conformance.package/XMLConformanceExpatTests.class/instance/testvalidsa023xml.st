tests
testvalidsa023xml
	"Source file: xmltest/valid/sa/023.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa023xml
				documentURI: 'valid/sa/023.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions