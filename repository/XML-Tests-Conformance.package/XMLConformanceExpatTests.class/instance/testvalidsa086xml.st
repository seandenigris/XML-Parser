tests
testvalidsa086xml
	"Source file: xmltest/valid/sa/086.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa086xml
				documentURI: 'valid/sa/086.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions