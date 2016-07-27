tests
testvalidsa053xml
	"Source file: xmltest/valid/sa/053.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa053xml
				documentURI: 'valid/sa/053.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions