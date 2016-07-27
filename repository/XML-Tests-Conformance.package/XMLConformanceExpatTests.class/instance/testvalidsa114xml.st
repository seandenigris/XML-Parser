tests
testvalidsa114xml
	"Source file: xmltest/valid/sa/114.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa114xml
				documentURI: 'valid/sa/114.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions