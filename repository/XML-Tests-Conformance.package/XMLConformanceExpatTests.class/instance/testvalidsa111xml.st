tests
testvalidsa111xml
	"Source file: xmltest/valid/sa/111.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa111xml
				documentURI: 'valid/sa/111.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions