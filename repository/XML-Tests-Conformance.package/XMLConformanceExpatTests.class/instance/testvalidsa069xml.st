tests
testvalidsa069xml
	"Source file: xmltest/valid/sa/069.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa069xml
				documentURI: 'valid/sa/069.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions