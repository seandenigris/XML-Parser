tests
testvalidsa008xml
	"Source file: xmltest/valid/sa/008.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa008xml
				documentURI: 'valid/sa/008.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions