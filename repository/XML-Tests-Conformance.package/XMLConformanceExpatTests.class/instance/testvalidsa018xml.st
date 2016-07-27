tests
testvalidsa018xml
	"Source file: xmltest/valid/sa/018.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa018xml
				documentURI: 'valid/sa/018.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions