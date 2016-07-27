tests
testvalidsa024xml
	"Source file: xmltest/valid/sa/024.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa024xml
				documentURI: 'valid/sa/024.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions