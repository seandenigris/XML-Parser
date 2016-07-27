tests
testvalidsa035xml
	"Source file: xmltest/valid/sa/035.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa035xml
				documentURI: 'valid/sa/035.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions