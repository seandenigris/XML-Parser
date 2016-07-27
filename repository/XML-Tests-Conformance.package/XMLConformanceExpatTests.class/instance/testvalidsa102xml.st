tests
testvalidsa102xml
	"Source file: xmltest/valid/sa/102.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa102xml
				documentURI: 'valid/sa/102.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions