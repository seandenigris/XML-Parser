tests
testvalidsa066xml
	"Source file: xmltest/valid/sa/066.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa066xml
				documentURI: 'valid/sa/066.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions