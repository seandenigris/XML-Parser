tests
testvalidsa113xml
	"Source file: xmltest/valid/sa/113.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa113xml
				documentURI: 'valid/sa/113.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions