tests
testvalidsa036xml
	"Source file: xmltest/valid/sa/036.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa036xml
				documentURI: 'valid/sa/036.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions