tests
testvalidsa093xml
	"Source file: xmltest/valid/sa/093.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa093xml
				documentURI: 'valid/sa/093.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions