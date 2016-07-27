tests
testvalidsa083xml
	"Source file: xmltest/valid/sa/083.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa083xml
				documentURI: 'valid/sa/083.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions