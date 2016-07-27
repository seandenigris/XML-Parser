tests
testvalidsa033xml
	"Source file: xmltest/valid/sa/033.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa033xml
				documentURI: 'valid/sa/033.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions