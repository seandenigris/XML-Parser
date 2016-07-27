tests
testvalidsa021xml
	"Source file: xmltest/valid/sa/021.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa021xml
				documentURI: 'valid/sa/021.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions