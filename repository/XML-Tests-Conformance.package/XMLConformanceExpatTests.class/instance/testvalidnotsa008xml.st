tests
testvalidnotsa008xml
	"Source file: xmltest/valid/not-sa/008.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa008xml
				documentURI: 'valid/not-sa/008.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions